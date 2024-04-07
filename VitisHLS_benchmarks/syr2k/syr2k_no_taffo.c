/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* syr2k.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#define N 16
#define M 16
/* Main computational kernel. The whole function will be timed,
   including the call and return. */
void syr2k(float* A, float* B, float* C, float alpha, float beta)
{
/* Retrieve problem size. */
  #pragma HLS INTERFACE m_axi port = A depth = N*M
    #pragma HLS INTERFACE m_axi port = B depth = N*M
    #pragma HLS INTERFACE m_axi port = C depth = N*M
  int n = N;
  int m = M;
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
  //float tmp[NI*NJ] __attribute__((annotate("tartget('tmp') scalar(range(-16384, 16384))")));

  int i;
  int j;
  int k;
  

  for (i = 0; i < N; i++) {
	#pragma HLS unroll factor=4
    for (j = 0; j <= i; j++){
        #pragma HLS PIPELINE II=1
        Cs[i*n + j] *= betas;
    }
    for (k = 0; k < M; k++){
     #pragma HLS PIPELINE II=1
        for (j = 0; j <= i; j++)
	{
	  #pragma HLS PIPELINE II=1
	  Cs[i*n+j] += As[j*m+k]*alphas*Bs[i*m+k] + Bs[j*m+k]*alphas*As[i*m+k];
	}
    }
  }
  


}


int main(int argc, char** argv)
{
  int n = N;
  int m = M;
  int i;
  int j;
  int k;
  /* Variable declaration/allocation. */
  float alpha;
  float beta;
  float C[N*N];
  float A[N*M];
  float B[N*M];
  alpha = 1.5;
  beta = 1.2;
  for (i = 0; i < n; i++){
    for (j = 0; j < m; j++) {
      A[i*m+j] = 5 * ((i*j+1)%n) / n;
      B[i*m+j] = 3* ((i*j+2)%m) / m;
    }
  }
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++) {
      C[i*n+j] = ((i*j+3)%n) / m;
    }

  
  syr2k(A, B, C, alpha, beta);


  return 0;
}
