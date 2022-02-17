// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_proj_example
 *
 * This is an example of a (trivially simple) user project,
 * showing how the user project can connect to the logic
 * analyzer, the wishbone bus, and the I/O pads.
 *
 * This project generates an integer count, which is output
 * on the user area GPIO pads (digital output only).  The
 * wishbone connection allows the project to be controlled
 * (start and stop) from the management SoC program.
 *
 * See the testbenches in directory "mprj_counter" for the
 * example programs that drive this user project.  The three
 * testbenches are "io_ports", "la_test1", and "la_test2".
 *
 *-------------------------------------------------------------
 */

`define MPRJ_IO_PADS 38

module highSpeedAdder #(
    parameter BITS = 32
)(
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // IRQ
    output [2:0] irq
);
 
    wire [`MPRJ_IO_PADS-1:0] io_in;
    wire [`MPRJ_IO_PADS-1:0] io_out;
    wire [`MPRJ_IO_PADS-1:0] io_oeb;

    wire [17:0] in1, in2;
    wire [18:0] out;
    wire en_mode;

    assign {in1, in2, en_mode} = io_in[`MPRJ_IO_PADS-2:0];
    assign io_out = {19'd0, out};
 
    adder adder(.p(in1), .q(in2), .mode(en_mode), .sum(out));

endmodule

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                  Company              :   SMDP-C2SD                                                      //
//                  Create Date          :   10 AUG 2021                                                    //
//                  Design Name          :   Feature Extraction Engine                                      //
//                  Target Devices       :   ASIC (SCL-180nm)    :   ZedBoard (FPGA-ZC702)                  //
//                  Tool versions        :   Cadence Genus       :   Vivado                                 //
//                                                                                                          //
//                  Design Engineer      :   DHAYALAKUMAR M & SKANDHA DEEPSITA S                            //
//                  Project Co-Ordinator :   Dr NOOR MAHAMMAD SK                                            //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////



/*
mode	00	-->	p+q
		01	-->	p-q
		10	-->	-p+q
		11	-->	-p-q		
		
				ps	qs	mode	out		P	Q
	a+b			0	0	0		00		0	0		a+b
	a-b			0	0	1		01		0	1		a+~b+1
	a-b			0	1	0		01		0	1		a+~b+1
	a+b			0	1	1		00		0	0		a+b
	-a+b		1	0	0		10		1	0		~a+b+1
	-a-b		1	0	1		11		1	1		~a+~b+2
	-a-b		1	1	0		11		1	1		~a+~b+2
	-a+b		1	1	1		10		1	0		~a+b+1
*/

//`define DSPoperator

module adder(p, q, mode, sum);

parameter num = 18;

output [num:0] sum;
input [num-1:0] p,q;
input mode;

wire [num:0] temp, temp1;

`ifdef DSPoperator
wire [num:0] temp2, temp3;
    assign temp2[num:0] = p[num-1] ? -{2'b0, p[num-2:0]}:{1'b0,p};
    assign temp3[num:0] = q[num-1] ? -{2'b0, q[num-2:0]}:{1'b0,q};
    assign temp[num:0] = mode ? temp2-temp3 : temp2+temp3;
`else
    wire [2*num+1:0] x [0:$clog2(num+1)];
    wire [num:0] a1, b1, a, b;

    assign a1 = {(num+1){p[num-1]}}^{2'b0, p[num-2:0]};
    assign b1 = {(num+1){mode^q[num-1]}}^{2'b0, q[num-2:0]};
    assign a[0] = a1[0];
    assign b[0] = b1[0];
    assign b[1] = p[num-1]&(q[num-1]^mode);
    assign a[num] = a1[num]^b1[num];

    assign x[0][1:0]={2{p[num-1]^q[num-1]^mode}};  					// Input carry

    genvar i, j;
    generate
    begin:ha_fa			//halfadder
        for(i=1; i<num; i=i+1) begin
        halfadd t0({a1[i],b1[i]}, a[i], b[i+1]);
        end
    end

    begin: kgp_gen		// kgp generation
        for (i=0; i<num; i=i+1) begin
        kgp t(a[i], b[i], x[0][2*i+3:2*i+2]);
        end
    end
    begin:recursiveStg	//recursive
        for (i=0; i<$clog2(num+1); i=i+1)
        begin
        assign x[i+1][(2**(i+1))-1:0]=x[i][(2**(i+1))-1:0];
            for(j=(2**(i+1)); j<2*num+1; j=j+2)
            begin
            recursive_stage1 s(x[i][j+1-(2**(i+1)):j-(2**(i+1))],x[i][j+1:j],x[i+1][j+1:j]);		
            end
        end
    end
    begin:addition		// SUM Calculation
        for(i=0; i<num+1; i=i+1) begin
        assign temp[i] = a[i]^b[i]^x[$clog2(num)][2*i];
        end
    end
    endgenerate
`endif
    assign temp1 = -temp;
    assign sum = temp[num] ? ({temp[num], temp1[num-1:0]}) : (temp);

endmodule

`ifdef DSPoperator

`else

    module kgp(a,b,y);

    input a,b;						output [1:0] y;

    assign y[0]=a | b;
    assign y[1]=a & b;

    endmodule



    module recursive_stage1(a,b,y);

    input [1:0] a,b;				output [1:0] y;

    wire [1:0] y;
    wire b0;
    not n1(b0,b[1]);
    wire f,g0,g1;
    and a1(f,b[0],b[1]);
    and a2(g0,b0,b[0],a[0]);
    and a3(g1,b0,b[0],a[1]);

    or o1(y[0],f,g0);
    or o2(y[1],f,g1);

    endmodule

    module halfadd(x, sum, carry);

output sum,carry;
input [1:0] x;

	assign	 sum = x[1] ^ x[0];
	assign 	 carry = x[1] & x[0];
	
endmodule



module fulladd(x, sum, carry);

output sum,carry;
input [2:0] x;

wire w;	
	assign 	 w = x[2] ^ x[1];
        assign	 sum = w ^ x[0];
	assign 	 carry = (x[2] & x[1])|(w & x[0]);
endmodule
`endif
`default_nettype wire
