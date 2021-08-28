#include <iostream>
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <hls_math.h>
#include <fstream>
#include <cstring>
#include "hls_half.h"

typedef half data_t;

void int_subtraction(hls::stream<short> &a, hls::stream<short> &b, hls::stream<data_t> &c)
{
#pragma HLS STREAM variable=c dim=1
#pragma HLS STREAM variable=b dim=1
#pragma HLS STREAM variable=a dim=1
	data_t g = (hls::log10(2.0))/2048;

	while(!a.empty() && !b.empty())
	{
#pragma HLS PIPELINE

			//read and cache block here
			data_t d,e,f;
			d = (data_t)a.read();
			e = (data_t)b.read();
			f = g * (d - e);

			c << f;
	}
}
