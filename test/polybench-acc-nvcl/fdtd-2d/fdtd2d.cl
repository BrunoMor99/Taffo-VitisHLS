/**
 * fdtd2d.cl: This file is part of the PolyBench/GPU 1.0 test suite.
 *
 *
 * Contact: Scott Grauer-Gray <sgrauerg@gmail.com>
 * Will Killian <killian@udel.edu>
 * Louis-Noel Pouchet <pouchet@cse.ohio-state.edu>
 * Web address: http://www.cse.ohio-state.edu/~pouchet/software/polybench/GPU
 */

#if defined(cl_khr_fp64)  // Khronos extension available?
#pragma OPENCL EXTENSION cl_khr_fp64 : enable
#elif defined(cl_amd_fp64)  // AMD extension available?
#pragma OPENCL EXTENSION cl_amd_fp64 : enable
#endif

#include "fdtd2d_sh_ann.h"

typedef float DATA_TYPE;
	
__kernel void fdtd_kernel1(ANN_FICT __global DATA_TYPE *_fict_, ANN_EX __global DATA_TYPE *ex, ANN_EY __global DATA_TYPE *ey, ANN_HZ __global DATA_TYPE *hz, int t, int nx, int ny) 
{    
	int j = get_global_id(0);
	int i = get_global_id(1);

	if ((i < nx) && (j < ny))
	{
		int tid = i * ny + j;

		if (i == 0) 
		{
			ey[i * ny + j] = _fict_[t];
		}
		else
		{ 
			ey[i * ny + j] = ey[i * ny + j] - 0.5f*(hz[i * ny + j] - hz[(i-1) * ny + j]);
		}
	}
}


__kernel void fdtd_kernel2(ANN_EX __global DATA_TYPE *ex, ANN_EY __global DATA_TYPE *ey, ANN_HZ __global DATA_TYPE *hz, int nx, int ny) 
{    
	int j = get_global_id(0);
	int i = get_global_id(1);
	
	if ((i < nx) && (j < ny) && (j > 0))
	{
		ex[i * ny + j] = ex[i * ny + j] - 0.5f*(hz[i * ny + j] - hz[i * ny + (j-1)]);
	}
}


__kernel void fdtd_kernel3(ANN_EX __global DATA_TYPE *ex, ANN_EY __global DATA_TYPE *ey, ANN_HZ __global DATA_TYPE *hz, int nx, int ny) 
{    
	int j = get_global_id(0);
	int i = get_global_id(1);
	
	if ((i < (nx-1)) && (j < (ny-1)))
	{
		hz[i * ny + j] = hz[i * ny + j] - 0.7f*(ex[i * ny + (j+1)] - ex[i * ny + j] + ey[(i + 1) * ny + j] - ey[i * ny + j]);
	}
}

