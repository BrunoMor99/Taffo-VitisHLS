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

#define NI 32
#define NJ 32
#define NK 32
#define NL 32


float mm(float gamma)
//int mm()
{

/* Retrieve problem size. */
    int ni = NI;
    int nj = NJ;
    int nk = NK;
    int nl = NL;
	   
    float A[NI*NK]; 
    float B[NK*NJ]; 
    float D[NI*NJ]; 
//#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=A
//#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=B  
    int i;
    int j;
    for (i = 0; i < ni; i++)
        for (j = 0; j < nk; j++)
            A[i*nk+j] = (float) 5 * ((i*j+1) % ni) / ni;
    for (i = 0; i < nk; i++)
        for (j = 0; j < nj; j++)
            B[i*nj+j] = (float) 3 * (i*(j+1) % nj) / nj;
    for (i = 0; i < ni; i++)
        for (j = 0; j < nl; j++)
            D[i*nl+j] = (float) 5 * (i*(j+2) % nk) / nk;
    

    /* Variable declaration/allocation. */
    float alpha=1.2;
    float beta=1.5;
    float fg = gamma;
    float tmp[NI*NJ];
    float sum = 0;
    
    //printf("initialized arrays\n");
    int ii;
    int jj;
    int k;
    float z;
    //#pragma HLS ARRAY_RESHAPE variable=A complete dim=2
    //#pragma HLS ARRAY_RESHAPE variable=B complete dim=1
    for (ii = 0; ii < NI; ii++){
    #pragma HLS PIPELINE II=1 
        for (jj = 0; jj < NJ; jj++)
        {
             #pragma HLS unroll factor=4
            tmp[ii*NJ+jj] = 0.0;
            for (k = 0; k < NK; k++){
            #pragma HLS PIPELINE II=1 
                z = A[ii*NK+k] * B[k*NJ+jj] * alpha;
                tmp[ii*NJ+jj] = tmp[ii*NJ+jj] + z;
            }
                 D[ii*NJ+jj] = D[ii*NJ+jj] * beta;
                 D[ii*NJ+jj] = D[ii*NJ+jj] + tmp[ii*NJ+jj];
                 sum += D[ii*NJ+jj];
        }
    }    
    
    
    

    return sum * gamma;
}


int main(){
    int ni = NI;
    int nj = NJ;
    int nk = NK;
    int nl = NL;
    
            
    float sum = mm(6.5);
    
    
    return 0;
}

