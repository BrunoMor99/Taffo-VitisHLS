/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* 2mm.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

#define NI 16
#define NJ 16
#define NK 16
#define NL 16
/* Main computational kernel. The whole function will be timed,
   including the call and return. */
void mm2(float* A, float* B, float* C, float* D, float alpha, float beta)
{
    #pragma HLS INTERFACE m_axi port = A depth = NI*NK
    #pragma HLS INTERFACE m_axi port = B depth = NK*NJ
    #pragma HLS INTERFACE m_axi port = C depth = NJ*NL
    #pragma HLS INTERFACE m_axi port = D depth = NI*NL
  int ni = NI;
  int nj = NJ;
  int nk = NK;
  int nl = NL;
  float alphas;
  alphas = alpha;
  float betas;
  betas=beta;
  
  float* As;
  As = A;
  float* Bs;
  Bs = B;
  float* Cs;
  Cs = C;
  float* Ds;
  Ds = D;
  float tmp[NI*NJ];

  int i;
  int j;
  int k;

  /* D := alpha*A*B*C + beta*D */
  for (i = 0; i < NI; i++){
  //#pragma HLS PIPELINE II=1 
    for (j = 0; j < NJ; j++){
    //#pragma HLS unroll factor=4
	    tmp[i*nj+j] = 0.0;
	    for (k = 0; k < NK; ++k){
	    //#pragma HLS PIPELINE II=1 
        tmp[i*nj+j] += alphas * As[i*nk+k] * Bs[k*nj+j];
        }
    }
  }
    
  for (i = 0; i < NI; i++){
  //#pragma HLS PIPELINE II=1 
    for (j = 0; j < NL; j++){
    //#pragma HLS unroll factor=4
	Ds[i*nl+j] *= betas;
	for (k = 0; k < NJ; ++k){
	//#pragma HLS PIPELINE II=1 
         Ds[i*nl+j] += tmp[i*nj+k] * Cs[k*nl+j];
        }
    }
  }
 
}


int main(int argc, char** argv)
{
  int ni = NI;
  int nj = NJ;
  int nk = NK;
  int nl = NL;
  
  /* Variable declaration/allocation. */
  float alpha;
  float beta;
  alpha = 1.5;
  beta = 1.2;

  float A[NI*NK];
  float B[NK*NJ];
  float C[NJ*NL];
  float D[NI*NL];
  
  int i;
  int j;
  int k;
  
  for (i = 0; i < ni; i++){
    for (j = 0; j < nk; j++){
        A[i*nk+j] = ((i*j+1) % ni) / ni;
    }
  }
    
  for (i = 0; i < nk; i++){
    for (j = 0; j < nj; j++){
        B[i*nj+j] = (i*(j+1) % nj) / nj;
    }
  }
    
  for (i = 0; i < nj; i++){
    for (j = 0; j < nl; j++){
        C[i*nl+j] = ((i*(j+3)+1) % nl) / nl;
    }
  }
    
  for (i = 0; i < ni; i++){
    for (j = 0; j < nl; j++){
        D[i*nl+j] = (i*(j+2) % nk) / nk;
    }
  }
  
  /* Run kernel. */
  mm2(A, B, C, D, alpha, beta);

  return 0;
}
