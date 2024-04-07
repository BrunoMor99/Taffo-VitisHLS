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

#define NI 16
#define NJ 16
#define NK 16
#define N 16


float mm(float gamma)
//int mm()
{
/* Retrieve problem size. */
    int ni = NI;
    int nj = NJ;
    int nk = NK;

    float A[NI*NK]; 
    float B[NK*NJ]; 
    float D[NI*NJ]; 
    int i, j, k;
    
    for (int i = 0; i < ni; i++){
        for (int j = 0; j < nk; j++){
            A[i*nk+j] = (float) 5 * ((i*j+1) % ni) / ni;
            }
    }
    for (int i = 0; i < nk; i++){
        for (int j = 0; j < nj; j++){
            B[i*nj+j] = (float) 3 * (i*(j+1) % nj) / nj;
        }
    }
    for (int i = 0; i < ni; i++){
        for (int j = 0; j < nj; j++){
            D[i*nj+j] = (float) 5 * (i*(j+2) % nk) / nk;
        }
    }

    /* Variable declaration/allocation. */
    float alpha=1.2;
    float beta=1.5;
    float fg = gamma;
    float tmp = 0;
    float sum = 0;
    float z;
    //#pragma HLS ARRAY_RESHAPE variable=A complete dim=2
    //#pragma HLS ARRAY_RESHAPE variable=B complete dim=1
   int ii, jj;
    for (ii = 0; ii < NI; ii++){	
    #pragma HLS PIPELINE II=1 
        for (jj = 0; jj < NI; jj++)
        {
            #pragma HLS unroll factor=4
            tmp = 0;
            for (k = 0; k < NI; k++){
            #pragma HLS PIPELINE II=1 
                z = A[ii*NI+k] * B[k*NI+jj] * alpha;
                tmp = tmp + z;
            }
                 D[ii*NI+jj] = D[ii*NI+jj] * beta;
                 D[ii*NI+jj] = D[ii*NI+jj] + tmp;
                 
        }
    }
    for (ii = 0; ii < NI; ii++)
    {
    	#pragma HLS PIPELINE II=1
        for (jj = 0; jj < NI; jj++){
        	sum += D[ii*NI+jj];
        }
    }
    
    
    return (sum * fg);
}


int main(){
    int ni = NI;
    int nj = NJ;
    int nk = NK;
    
            
    float sum = mm(6.5);
    
    
    return sum;
}

