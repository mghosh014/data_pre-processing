#include <iostream>
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <hls_math.h>
#include <fstream>
#include <cstring>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_half.h"

typedef half data_t;
typedef float fix_float;

void float_subtraction(hls::stream<short> &a, hls::stream<short> &b, hls::stream<data_t> &c)
{
#pragma HLS STREAM variable=c dim=1
#pragma HLS STREAM variable=b dim=1
#pragma HLS STREAM variable=a dim=1
	fix_float g = (hls::log10f(2.0f))/2048;

while(!a.empty() && !b.empty())
   {
#pragma HLS PIPELINE

		//read and cache block here
		fix_float d,e,f;
		d = (fix_float)a.read();
		e = (fix_float)b.read();
		f = g * (d - e);

		c << (data_t)f;
	}
}
