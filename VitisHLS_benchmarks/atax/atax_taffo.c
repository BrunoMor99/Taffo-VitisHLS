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
#include <stdint.h>
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
    float* As __attribute__((annotate("target('As') scalar(range(1, 400))")));
    As = A;
    float* xs __attribute__((annotate("target('xs') scalar(range(1, 400))")));
    xs = x;
    float* ys __attribute__((annotate("target('ys') scalar(range(1, 400))")));
    ys = y;
    float tmp __attribute__((annotate("scalar(range(1, 400))")));
    float __attribute__((annotate("scalar()"))) zero;
    zero = 0.0;
    int i;
    int j;
    float y_true[n] __attribute__((annotate("target('y_true') scalar(range(1, 400))")));
    for (i = 0; i < N; i++){
        y_true[i] = zero;
    }
    
    for (i = 0; i < M; i++)
    {
    //#pragma HLS PIPELINE II=1
      tmp = zero;
      
      for (j = 0; j < N; j++){
      //#pragma HLS PIPELINE II=1
        tmp = tmp + As[i*M+j] * xs[j];
      }
      for (j = 0; j < N; j++){
      //#pragma HLS unroll factor=4
       //ys[j] = As[i*M+j] * 2 ;
        y_true[j] = y_true[j] + As[i*M+j];// * tmp;
      }
    }
    
    for (j = 0; j < N; j++){
        y[j] =(float) y_true[j];
      }
}



int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int m = M;
  int n = N;
  /* Run kernel. */
  float A[m*n] __attribute__((annotate("target('A') scalar(range(1, 4))")));
    float x[n] __attribute__((annotate("target('x') scalar(range(1, 4))")));
    float y[n];// __attribute__((annotate("target('y') scalar(range(1, 4))")));
    float y_true[n] __attribute__((annotate("target('y_true') scalar(range(1, 4))")));
    
    int i;
    int j;
    float __attribute__((annotate("scalar()"))) fn;
    fn = 16.0;
    float __attribute__((annotate("scalar()"))) fm;
    fm = 16.0;
    float __attribute__((annotate("scalar()"))) five;
    five = 5.0;
    float __attribute__((annotate("scalar()"))) zero;
    zero = 0.0;
    float __attribute__((annotate("scalar()"))) one;
    one = 1.0;
    
    float tmp_x __attribute__((annotate("scalar(range(1, 4))")));
    float tmp_A __attribute__((annotate("scalar(range(1, 4))")));

    for (i = 0; i < N; i++){
    	tmp_x = one;
        x[i] = tmp_x;
    }
    
    for (i = 0; i < M; i++){
   
        for (j = 0; j < n; j++){
        tmp_A =  ((i+j)%n) / (five*m);
          A[i*n+j] = one;
        }
    }
    for (i = 0; i < N; i++){
        y[i] = zero;
        y_true[i] = zero;
    }
    
    float tmp __attribute__((annotate("scalar(range(-4, 4))")));
    for (i = 0; i < M; i++)
    {
      tmp = zero;
      
      for (j = 0; j < N; j++){
        tmp = tmp + A[i*M+j] * x[j];
      }
      for (j = 0; j < N; j++){
        y_true[j] = y_true[j] + A[i*M+j] * tmp;
      }
    }
    
    
  atax(A, x, y);
  
  for (i = 0; i < N; i++){
        printf("%0.16f \n", (float)y[i]);
        printf("%f \n", y_true[i]);
    }
  return 0;
}
