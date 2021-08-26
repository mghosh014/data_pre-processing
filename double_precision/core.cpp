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
typedef double fix_double;

void double_subtraction(hls::stream<short> &a, hls::stream<short> &b, hls::stream<data_t> &c)
{
#pragma HLS STREAM variable=c dim=1
#pragma HLS STREAM variable=b dim=1
#pragma HLS STREAM variable=a dim=1
	fix_double g = (hls::log10(2.0))/2048;

while(!a.empty() && !b.empty())
   {
#pragma HLS PIPELINE

		//read and cache block here
		fix_double d,e,f;
		//short f;
		d = (fix_double)a.read();
		e = (fix_double)b.read();
		f = g * (d - e);

		c << (data_t)f;
	}
}
