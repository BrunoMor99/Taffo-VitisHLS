/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 * # (C) Copyright 2016-2022 Xilinx, Inc.
# All Rights Reserved.
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
 *
 */
/* 2mm.c: this file is part of PolyBench/C */



#include <stdio.h>

#define N 16
#define M 16
#define K 16


float mm(float gamma)
{
    /* Retrieve problem size. */
    int ni = N;
    int nj = M;
    int nk = K;
    int i, j, k;
    float A[N*N] __attribute__((annotate("scalar()"))); 
    float B[N*N] __attribute__((annotate("scalar()"))); 
    float D[N*N] __attribute__((annotate("target('D') scalar(range(-160, 160))"))); 
    
    for (i = 0; i < ni; i++){
        for (j = 0; j < nk; j++){
            A[i*nk+j] = (float) 5 * ((i*j+1) % ni) / ni;
            }
    }
    for (i = 0; i < nk; i++){
        for (j = 0; j < nj; j++){
            B[i*nj+j] = (float) 3 * (i*(j+1) % nj) / nj;
        }
    }
    for (i = 0; i < ni; i++){
        for (j = 0; j < nj; j++){
            D[i*nj+j] = (float) 5 * (i*(j+2) % nk) / nk;
        }
    }

    /* Variable declaration/allocation. */
    float __attribute__((annotate("scalar()"))) alpha=1.2;
    float __attribute__((annotate("scalar()"))) beta=1.5;
    float __attribute__((annotate("scalar(range(-160, 160))"))) fg = gamma;
    float __attribute__((annotate("scalar(range(-160, 160))"))) tmp = 0;
    float __attribute__((annotate("scalar(range(-100, 100))"))) sum = 0;
    float z __attribute__((annotate("scalar(range(-200, 200))")));
    int ii, jj;
    for (ii = 0; ii < N; ii++){	
    #pragma HLS PIPELINE II=1 
        for (jj = 0; jj < N; jj++)
        {
            #pragma HLS unroll factor=4
            tmp = 0;
            for (k = 0; k < N; k++){
            #pragma HLS PIPELINE II=1 
                z = A[ii*N+k] * B[k*N+jj] * alpha;
                tmp = tmp + z;
            }
                 D[ii*N+jj] = D[ii*N+jj] * beta;
                 D[ii*N+jj] = D[ii*N+jj] + tmp;
                 
        }
    }
    for (ii = 0; ii < N; ii++)
    {
    	#pragma HLS PIPELINE II=1
        for (jj = 0; jj < N; jj++){
        	sum += D[ii*N+jj];
        }
    }
    
    return (sum * fg);
}


int main(){
    int ni = N;
    int nj = N;
    int nk = N;
    
            
    float sum = mm(6.5);
    
    
    return 0;
}

