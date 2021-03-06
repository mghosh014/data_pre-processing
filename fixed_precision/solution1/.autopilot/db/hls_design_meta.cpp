#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("a_V_dout", 16, hls_in, 0, "ap_fifo", "fifo_data", 2),
	Port_Property("a_V_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 2),
	Port_Property("a_V_read", 1, hls_out, 0, "ap_fifo", "fifo_update", 2),
	Port_Property("b_V_dout", 16, hls_in, 1, "ap_fifo", "fifo_data", 2),
	Port_Property("b_V_empty_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 2),
	Port_Property("b_V_read", 1, hls_out, 1, "ap_fifo", "fifo_update", 2),
	Port_Property("c_V_din", 16, hls_out, 2, "ap_fifo", "fifo_data", 1),
	Port_Property("c_V_full_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 1),
	Port_Property("c_V_write", 1, hls_out, 2, "ap_fifo", "fifo_update", 1),
};
const char* HLS_Design_Meta::dut_name = "long_subtraction";
