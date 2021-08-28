#include <iostream>
#include <iomanip>
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <hls_math.h>
#include <fstream>
#include <cstring>
#include "hls_half.h"

typedef half data_t;

using namespace std;
//function declaration

#define MAX_PRJ 8000
#define MAX_SLICE 64
#define DATA_SLICE 672

static short prj [MAX_PRJ][MAX_SLICE][DATA_SLICE]; //SLICE DATA MATRIX
static short prj_2 [MAX_PRJ][MAX_SLICE][DATA_SLICE];

void int_subtraction(hls::stream<short> &a, hls::stream<short> &b, hls::stream<data_t> &c);

int main()
{
	hls::stream<short> input_a;
	hls::stream<short> input_b;
	hls::stream<data_t> output_c;

	ifstream infile_1, infile_2; //input stream declared
	ofstream infile_3; //output stream declared
	infile_1.open("Scanaxial_13_04_2021_N_0_Pha.bin", ios::in | ios::binary);
	infile_2.open("Scanaxial_13_04_2021_N_1_io.bin", ios::in | ios::binary);
	infile_3.open("int_output.bin", ios::out | ios::binary);

	if(!infile_1)
    {
        cout << "Cannot open the first file" << endl;
        return -1;
    }
    else
    {
                //uint16_t data_tmp = 0;
                short data_tmp = 0;
                infile_1.read((char*) &data_tmp, 2);
                int i_prj = 0;
                int i_slice = 0;
                int i_col = 0;
                while (!infile_1.eof() && i_prj < MAX_PRJ)
                {
                	prj[i_prj][i_slice][i_col] = data_tmp;
                    i_col++;
                    if(i_col == DATA_SLICE) {
                        i_col = 0;
                        i_slice++;
                    }
                    if(i_slice == MAX_SLICE) {
                        i_slice = 0;
                        i_prj++;
                    }
                    infile_1.read((char*) &data_tmp, 2);
                 }
                cout << "Max PRJ: " << i_prj << endl;

    }
    infile_1.close();

    if(!infile_2)
    {
    	cout << "Cannot open this file" << endl;
    	return 1;
    }
    else
    {
    	short data2 = 0;
    	infile_2.read((char*) &data2, 2);
    	int i_prj_2 = 0;
    	int i_slice_2 = 0;
    	int i_col_2 = 0;
    	while (!infile_2.eof() && i_prj_2 < MAX_PRJ)
    	{
    		prj_2[i_prj_2][i_slice_2][i_col_2] = data2;
    		i_col_2++;
    		if(i_col_2 == DATA_SLICE)
    		{
    			i_col_2 = 0;
    			i_slice_2++;
    		}
    		if(i_slice_2 == MAX_SLICE)
    		{
    			i_slice_2 = 0;
    			i_prj_2++;
    		}
    		infile_2.read((char*) &data2, 2);

    	}
    	cout << "Max PRJ 2: " << i_prj_2 << endl;
    }
    infile_2.close();



    for(int h = 0; h < 1160; h++) {
            for(int k = 0; k < MAX_SLICE; k++) {
                for(int i = 0; i < DATA_SLICE; i++) {
                    input_a << prj[h][k][i];
                    input_b << prj_2[h][k][i];

                    }

                }
            }
    // calling my source code
    int_subtraction(input_a, input_b, output_c);

    if(!infile_3)
    {
    	cout << "Cannot open the file" << endl;
    	return 1;
    }
    else
    {
    	data_t data3 = 0;
    	for(int h=0; h < 1160; h++)
    	{
    		for(int k = 0; k < MAX_SLICE; k++)
    		{
    			for(int i = 0; i < DATA_SLICE; i++)
    			{
    				data3 = output_c.read();
    				infile_3.write((char *) &data3, 2);
    			}
    		}
    	}

    }
    infile_3.close();
    if(!infile_3.good())
    {
    	cout << "Error occurred at the writing time" << endl;
    	return 1;
    }

    data_t h = (hls::log10(2.0))/2048;
    std::cout << std::setprecision(9) << h << std::endl;

	cout << "Hello world" << endl;
	return 0;

}
