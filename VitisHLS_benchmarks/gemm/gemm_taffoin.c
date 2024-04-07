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
{
    int ni = NI;
    int nj = NJ;
    int nk = NK;
    int nl = NL;
	   
    float A[NI*NK] __attribute__((annotate("scalar()"))); 
    float B[NK*NJ] __attribute__((annotate("scalar()"))); 
    float D[NI*NJ] __attribute__((annotate("target('D') scalar(range(-16, 16))"))); 
    int i __attribute__((annotate("scalar(range(0, 16))")));
    int j __attribute__((annotate("scalar(range(0, 16))")));
    for (i = 0; i < ni; i++)
        for (j = 0; j < nk; j++)
            A[i*nk+j] = (float) 5 * ((i*j+1) % ni) / ni;
    for (i = 0; i < nk; i++)
        for (j = 0; j < nj; j++)
            B[i*nj+j] = (float) 3 * (i*(j+1) % nj) / nj;
    for (i = 0; i < ni; i++)
        for (j = 0; j < nl; j++)
            D[i*nl+j] = (float) 5 * (i*(j+2) % nk) / nk;
    float __attribute__((annotate("scalar()"))) alpha=1.2;
    float __attribute__((annotate("scalar()"))) beta=1.5;
    float __attribute__((annotate("scalar(range(-16, 16))"))) fg = gamma;
    float tmp[NI*NJ] __attribute__((annotate("scalar(range(-16, 16))")));
    float __attribute__((annotate("scalar(range(-100, 100))"))) sum = 0;
    
    int ii __attribute__((annotate("scalar(range(0, 32))")));
    int jj __attribute__((annotate("scalar(range(0, 32))")));
    int k __attribute__((annotate("scalar(range(0, 32))"))) ;
    float z __attribute__((annotate("scalar(range(-100, 100))"))) ;
    for (ii = 0; ii < NI; ii++)
    {
        for (jj = 0; jj < NJ; jj++)
        {
            #pragma HLS PIPELINE II=1
            tmp[ii*NJ+jj] = 0.0;
            for (k = 0; k < NK; k++){
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
    
    
    return sum;
}

