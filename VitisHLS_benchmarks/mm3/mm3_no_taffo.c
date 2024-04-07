/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* 3mm.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

#define NI 16
#define NJ 16
#define NK 16
#define NL 16
#define NM 16


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
void mm3(float* A, float* B, float* C, float* D, float* E, float* F, float* G)
{
    #pragma HLS INTERFACE m_axi port = A depth = NI*NK
    #pragma HLS INTERFACE m_axi port = B depth = NK*NJ
    #pragma HLS INTERFACE m_axi port = C depth = NJ*NM
    #pragma HLS INTERFACE m_axi port = D depth = NM*NL
    #pragma HLS INTERFACE m_axi port = E depth = NI*NJ
    #pragma HLS INTERFACE m_axi port = F depth = NJ*NL
    #pragma HLS INTERFACE m_axi port = G depth = NI*NL
  /* Retrieve problem size. */
  int ni = NI;
  int nj = NJ;
  int nk = NK;
  int nl = NL;
  int nm = NM;
  
  float* As;
  As = A;
  float* Bs;
  Bs = B;
  float* Cs;
  Cs = C;
  float* Ds;
  Ds = D;
  float* Es;
  Es = E;
  float* Fs;
  Fs = F;
  float* Gs;
  Gs = G;

  int i;
  int j;
  int k;
  

  /* E := A*B */
  for (i = 0; i < ni; i++){
  //#pragma HLS PIPELINE II=1
    for (j = 0; j < nj; j++){
    //#pragma HLS unroll factor=4
	    Es[i*nj+j] = 0.0;
	    for (k = 0; k < NK; ++k){
	    //#pragma HLS PIPELINE II=1
	        Es[i*nj+j] += As[i*nk+k] * Bs[k*nj+j];
        }
    }
   }
  /* F := C*D */
  for (i = 0; i < nj; i++){
  //#pragma HLS PIPELINE II=1
    for (j = 0; j < nl; j++){
    //#pragma HLS unroll factor=4
	    Fs[i*nl+j] = 0.0;
	    for (k = 0; k < NM; ++k){
	    //#pragma HLS PIPELINE II=1
	        Fs[i*nl+j] += Cs[i*nm+k] * Ds[k*nl+j];
        }
    }
   }

  /* G := E*F */
  for (i = 0; i < NI; i++){
  //#pragma HLS PIPELINE II=1
    for (j = 0; j < NL; j++){
    //#pragma HLS unroll factor=4
	    Gs[i*nl+j] = 0.0;
	    for (k = 0; k < NJ; ++k){
	    //#pragma HLS PIPELINE II=1
	        Gs[i*nl+j] += Es[i*nj+k] * Fs[k*nl+j];
        }
    }
  }
}


int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int ni = NI;
  int nj = NJ;
  int nk = NK;
  int nl = NL;
  int nm = NM;
  
  float A[NI*NK];
  float B[NK*NJ];
  float C[NJ*NM];
  float D[NM*NL];
  float E[NI*NJ];
  float F[NJ*NL];
  float G[NI*NL];

  int i;
  int j;
  int k;

  for (i = 0; i < ni; i++){
    for (j = 0; j < nk; j++){
        A[i*nk+j] = ((i*j+1) % ni) / (5*ni);
    }
  }
    
  for (i = 0; i < nk; i++){
    for (j = 0; j < nj; j++){
        B[i*nj+j] = ((i*(j+1)+2) % nj) / (5*nj);
    }
  }

  for (i = 0; i < nj; i++){
    for (j = 0; j < nm; j++){
        C[i*nm+j] = (i*(j+3) % nl) / (5*nl);
    }
  }
    
  for (i = 0; i < nm; i++){
    for (j = 0; j < nl; j++){
      D[i*nl+j] = ((i*(j+2)+2) % nk) / (5*nk);
      }
   }
  
  float alpha = 0.4;
  float beta = 0.6;
  float gamma = 0.9;
  float delta = 0.3;
  /* Run kernel. */
  mm3(A, B, C, D, E, F, G);
  return 0;
}
