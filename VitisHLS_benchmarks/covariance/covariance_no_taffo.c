/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* covariance.c: this file is part of PolyBench/C */

#include <stdio.h>
#define M 16
#define N 16

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
void covariance(float* data, float* cov, float* mean)
{
  #pragma HLS INTERFACE m_axi port = data depth = 256
    #pragma HLS INTERFACE m_axi port = cov depth = 256
    #pragma HLS INTERFACE m_axi port = mean depth = 16
    //#pragma HLS ARRAY_PARTITION variable=data type=block factor=4 dim=1
    //#pragma HLS ARRAY_PARTITION variable=cov type=block factor=4 dim=1
    //#pragma HLS ARRAY_PARTITION variable=mean type=block factor=4 dim=1
    

int i;
int j;
int k ;
  int n = N;
  int m = M;
  float float_n;
  float onedotzero;
  onedotzero = 1.0;
  float_n = n;
  
  float q;
  q = float_n - onedotzero;
  

    float* datas; 
    datas = data;
    float* covs; 
    covs = cov;
    float* means; 
    means = mean;
    float sum = 0;

  for (j = 0; j < M; j++)
    {
    //#pragma HLS PIPELINE II=1  
      for (i = 0; i < N; i++){
      //#pragma HLS PIPELINE II=1  
        means[j] += datas[i*m+j];
        }
      means[j] /= float_n;
    }

  for (i = 0; i < N; i++){
  //#pragma HLS PIPELINE II=1  
    for (j = 0; j < M; j++){
    //#pragma HLS unroll factor=4
      datas[i*m+j] -= means[j];
      }
      }

  for (i = 0; i < M; i++){
      //#pragma HLS unroll factor=4
    for (j = i; j < M; j++)
      {
      //#pragma HLS PIPELINE II=1  
        for (k = 0; k < N; k++){
        //#pragma HLS PIPELINE II=1  
	  covs[i*m+j] += datas[k*m+j] * datas[k*m+j];
	  }
        cov[i*m+j] /= q;
        cov[j*m+i] = cov[i*m+j];
      }
	}
	
}


int main(int argc, char** argv)
{
  int i, j, k;
  int n = N;
  int m = M;
  float float_n = (float) n;

    float data[N*M]; 
    float cov[M*M]; 
    float mean[M]; 
    for (i = 0; i < n; i++){
        for (j = 0; j < m; j++){
            data[i*m+j] = (float) 0.5 * ((i*j+1) % n) / n;
            }
    }

    for (i = 0; i < m; i++){
        mean[i] = 0.0;
    }

    for (i = 0; i < m; i++){
        for (j = 0; j < m; j++){
            cov[i*m+j] = 0.0;
        }
    }
    

  /* Run kernel. */
  covariance(data, cov, mean);
    
  return 0;
}
