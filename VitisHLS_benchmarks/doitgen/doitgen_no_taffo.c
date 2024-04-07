/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* doitgen.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

#define NR 16
#define NP 16
#define NQ 16


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
void doitgen(float* A, float* C, float* sum)
{
    #pragma HLS INTERFACE m_axi port = A depth = 4096
    #pragma HLS INTERFACE m_axi port = C depth = 256
    #pragma HLS INTERFACE m_axi port = sum depth = 16
    #pragma HLS ARRAY_PARTITION variable=A type=block factor=4 dim=1
    #pragma HLS ARRAY_PARTITION variable=C type=block factor=4 dim=1
  int nr = NR;
  int nq = NQ;
  int np = NP;
   int r;
  int q;
  int p;
  int s;

  int i;
  int j;
  int k;
  float* As;
  As = A;
  float* sums;
  sums = sum;
  float* Cs;
  Cs = C;

 
  for (r = 0; r < NR; r++){
  #pragma HLS PIPELINE II=1
    for (q = 0; q < NQ; q++)  {
    #pragma HLS PIPELINE II=1
      for (p = 0; p < NP; p++)  {
      #pragma HLS unroll factor=8
	    sums[p] = 0.0;
	    for (s = 0; s < NP; s++){ 
	    #pragma HLS PIPELINE II=1
	        sums[p] += As[r*nq+q*np+s] * Cs[s * NP + p];
        }
      }

	
      for (p = 0; p < NP; p++){
       #pragma HLS unroll factor=8
	    As[r*nq+q*np+p] = sums[p];
       }
    }
   }
	  

}


int main(int argc, char** argv)
{
  int nr = NR;
  int nq = NQ;
  int np = NP;
  float A[NR*NQ*NP];
  float sum[NP];
  float C[NP*NP];

  int r;
  int q;
  int p;
  int s;

  int i;
  int j;
  int k;

  for (i = 0; i < nr; i++){
    for (j = 0; j < nq; j++){
      for (k = 0; k < np; k++){
	    A[i*nq+j*np+k] = ((i*j + k)%np) / np;
       }
    }
  }
  for (i = 0; i < np; i++){
    for (j = 0; j < np; j++){
      C[i*np+j] = ((i*j) %np) / np;
    }
   }
   
   
  /* Run kernel. */
  doitgen(A, C, sum);
  
  for (i = 0; i < nr*nq*np; i++)
   {
    printf("%f \n", A[i]);
   }
  return 0;
}
