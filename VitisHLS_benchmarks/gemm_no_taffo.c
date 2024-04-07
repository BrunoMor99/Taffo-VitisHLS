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
#define NJ 18
#define NK 22
#define NL 24

int mm(double A[], double B[], double C[], double D[])
{
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=A
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=B
#pragma HLS INTERFACE m_axi port = A depth = NI*NK
#pragma HLS INTERFACE m_axi port = B depth = NK*NJ
#pragma HLS INTERFACE m_axi port = C depth = NJ*NL
#pragma HLS INTERFACE m_axi port = D depth = NI*NJ
    /* Retrieve problem size. */
    int ni = NI;
    int nj = NJ;
    int nk = NK;
    int nl = NL;

    /* Variable declaration/allocation. */
    double  alpha=1.2;
    double  beta=1.5;
    double tmp[NI*NJ];
    
    printf("initialized arrays\n");
    int ii, jj, k;
    #pragma HLS ARRAY_RESHAPE variable=A complete dim=2
    #pragma HLS ARRAY_RESHAPE variable=B complete dim=1
    for (ii = 0; ii < NI; ii++)
    {
        for (jj = 0; jj < NJ; jj++)
        {
            #pragma HLS PIPELINE II=1
            tmp[ii*NJ+jj] = 0.0;
            for (k = 0; k < NK; k++){
            //#pragma HLS pipeline
             double z = tmp[ii*NJ+jj];
                tmp[ii*NJ+jj] = z + alpha * A[ii*NK+k] * B[k*NJ+jj];
            }
            D[ii*NJ+jj]= tmp[ii*NJ+jj];
        }
    }    

   /*
    for (ii = 0; ii < NI; ii++)
    {
    	#pragma HLS UNROLL factor=4
        for (jj = 0; jj < NJ; jj++)
        {
            #pragma HLS UNROLL factor=8
            tmp[ii*NJ+jj] = 0.0;
            for (k = 0; k < NK; k++){
            #pragma HLS loop_flatten off
            //#pragma HLS pipeline
             double z = tmp[ii*NJ+jj];
                tmp[ii*NJ+jj] = z + alpha * A[ii*NK+k] * B[k*NJ+jj];
            }
                
        }
    }    
    for (ii = 0; ii < NI; ii++){
    #pragma HLS UNROLL factor=4
        for (jj = 0; jj < NL; jj++)
        {
        #pragma HLS UNROLL factor=4
            D[ii*NL+jj] *= beta;
            for (k = 0; k < NJ; ++k){
            #pragma HLS loop_flatten off
            //#pragma HLS pipeline
                D[ii*NL+jj] += tmp[ii*NJ+k] * C[k*NL+jj];
                }
        }
    }
    */
    
    

    return 0;
}

int main(){
     /* Retrieve problem size. */
    int ni = NI;
    int nj = NJ;
    int nk = NK;
    int nl = NL;
    double A[NI*NK]; 
    double B[NK*NJ]; 
    double C[NJ*NL]; 
    double D[NI*NJ]; 

    /* Initialize array(s). */
    int i;
    int j;
    printf("Arrays declared\n");
    double alpha = 1.5;
    double beta = 1.2;
    for (i = 0; i < ni; i++)
        for (j = 0; j < nk; j++)
            A[i*nk+j] = (double) ((i*j+1) % ni) / ni;
    for (i = 0; i < nk; i++)
        for (j = 0; j < nj; j++)
            B[i*nj+j] = (double) (i*(j+1) % nj) / nj;
    for (i = 0; i < nj; i++)
        for (j = 0; j < nl; j++)
            C[i*nl+j] = (double) ((i*(j+3)+1) % nl) / nl;
    for (i = 0; i < ni; i++)
        for (j = 0; j < nj; j++)
            D[i*nj+j] = (double) (i*(j+2) % nk) / nk;
            
    mm(A, B, C, D);
    
    for (int ii=0; ii < ni; ii++){
        for (int jj=0; jj < nj; jj++) {
            if ((i * ni + j) % 20 == 0.0)printf("\n");
            printf("%lf", D[i*nj+j]);
        }

    }
    return 0;
}
