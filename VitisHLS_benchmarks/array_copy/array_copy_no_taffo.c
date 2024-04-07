/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* atax.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#define M 16
#define N 16

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
   
   
void atax(float* A, float* x, float* y)
{
    #pragma HLS INTERFACE m_axi port = A depth = 256
    #pragma HLS INTERFACE m_axi port = x depth = 16
    #pragma HLS INTERFACE m_axi port = y depth = 16
    int m = M;
    int n = N;
    float* As;
    As = A;
    float* xs;
    xs = x;
    float tmp;
    int i;
    int j;
    float fn;
    fn = (float)n;
    float fm;
    fm = (float)m;
    float five;
    five = 5.0;
    float zero;
    zero = 0.0;
    float one;
    one = 1.0;
	
    for (i = 0; i < M; i++)
    {
       #pragma HLS PIPELINE II=1
     
      tmp = zero;
      for (j = 0; j < N; j++){
      #pragma HLS PIPELINE II=1
        tmp = tmp + As[i*M+j] * xs[j];
      }
      
      for (j = 0; j < N; j++){
       #pragma HLS unroll factor=4
        y[j] = y[j] + As[i*M+j] * tmp;
      }
    }

}



int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int m = M;
  int n = N;
  /* Run kernel. */
  float A[m*n];
    float x[n];
    float y[n];
    float y_true[n];
    
    int i;
    int j;
    float fn;
    fn = 16.0;
    float fm;
    fm = 16.0;
    float five;
    five = 5.0;
    float zero;
    zero = 0.0;
    float one;
    one = 1.0;
    
    float tmp_x;
    float tmp_A;

    for (i = 0; i < N; i++){
    	tmp_x = one + (i / fn);
        x[i] = tmp_x;
    }
    
    for (i = 0; i < M; i++){
   
        for (j = 0; j < n; j++){
        tmp_A =  ((i+j)%n) / (five*m);
          A[i*n+j] = tmp_A;
        }
    }
    for (i = 0; i < N; i++){
        y[i] = zero;
    }
    
    
  atax(A, x, y);
  
  for (j = 0; j < N; j++){
        printf("%f \n", y[j]);
        printf("%f \n", y[j]);
    }
  return 0;
}
