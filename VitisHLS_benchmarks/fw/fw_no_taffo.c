/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* floyd-warshall.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

#define N 16

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
void fw(){
 /* Retrieve problem size. */
  int n = N;
  int i;
  int j;
  int k;

  float path[N*N];

  for (i = 0; i < n; i++){
    for (j = 0; j < n; j++) {
      path[i*n+j] = i*j%7+1;
      if ((i+j)%13 == 0 || (i+j)%7==0 || (i+j)%11 == 0)
         path[i*n+j] = 999;
    }
  }

  for (k = 0; k < N; k++){
      for(i = 0; i < N; i++){
        for (j = 0; j < N; j++) {
          float tmpa = path[i*n+k];
          float tmpb = path[k*n+j];
          int cond = path[i*n+j] < path[i*n+k] + path[k*n+j];
          if (cond) {
            path[i*n+j] = path[i*n+j];
          } else {
            path[i*n+j] = tmpa + tmpb;
          }
        }
       }
  }

  for (i = 0; i < N*N; i++){
    printf("%f \n", path[i]);
  }
  
}


int main(int argc, char** argv)
{
  /* Run kernel. */
  fw();

  return 0;
}
