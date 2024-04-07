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
   
   
void array_copy(float y[16], float alpha)
{
    #pragma HLS INTERFACE m_axi port = y depth = 16
    int n = N;
    int i;
    int j;
    float __attribute__((annotate("scalar()"))) fn;
    fn = alpha;
    float x[n] __attribute__((annotate("target('xs') scalar(range(0, 5))")));
    float tmp_x;

    for (i = 0; i < N; i++){
    	tmp_x = (i / fn);
        x[i] = tmp_x;
    }
    float ys[16] __attribute__((annotate("target('ys') scalar(range(0, 20))")));
    float __attribute__((annotate("scalar()"))) five;
    five = 5.0;
    for (i = 0; i < 16; i++)
    {
    ys[i] = x[i]*x[i];
    }
    
    for (i = 0; i < 16; i++)
    {
    y[i] = (float)ys[i];
    }
}


int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int m = M;
  int n = N;
    float x[n];
    float y[n];
    int i;
    int j;
    float fn;
    fn = 16.0;
    float five = 5.0;
    float zero = 0.0;
    
    
    float tmp_x;

    for (i = 0; i < N; i++){
    	tmp_x = (i / fn);
        x[i] = tmp_x;
    }
    for (i = 0; i < N; i++){
        y[i] = zero;
    }
    
    
    
  array_copy(y, 16);
  
  for (i = 0; i < N; i++){
        printf("%f \n", y[i]);
        printf("%f \n", x[i]*x[i]);
    }
  return 0;
}
