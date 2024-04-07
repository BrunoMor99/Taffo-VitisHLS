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

#define N 64

int vs(float A[], float alpha)
{
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=A
#pragma HLS INTERFACE m_axi port = A depth = N
    /* Retrieve problem size. */
    int n = N;
    
    printf("initialized arrays\n");
    int i;

    for (i = 0; i < N; i++)
    {
#pragma HLS UNROLL
        A[i] = A[i]*alpha;
    }    

    return 0;
}

int main(){
     /* Retrieve problem size. */
    int n = N;
    float A[N];

    /* Initialize array(s). */
    int i;
    printf("Arrays declared\n");
    float alpha = 1.5;
    for (i = 0; i < n; i++)
            A[i] = (float) i;
            
    vs(A, alpha);
    
    for (i=0; i < n; i++){
            printf("%f\n", A[i]);
    }
    return 0;
}
