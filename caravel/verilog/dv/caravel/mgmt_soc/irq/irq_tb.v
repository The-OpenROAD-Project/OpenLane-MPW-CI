`default_nettype none
/*
 *  SPDX-FileCopyrightText: 2017  Clifford Wolf, 2018  Tim Edwards
 *
 *  Caravel - A full example SoC using PicoRV32 in SkyWater sky130
 *
 *  Copyright (C) 2017  Clifford Wolf <clifford@clifford.at>
 *  Copyright (C) 2021  Tim Edwards <tim@efabless.com>
 *
 *  Permission to use, copy, modify, and/or distribute this software for any
 *  purpose with or without fee is hereby granted, provided that the above
 *  copyright notice and this permission notice appear in all copies.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 *  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 *  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 *  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 *  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 *  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 *  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 *  SPDX-License-Identifier: ISC
 */

`timescale 1 ns / 1 ps

`include "__uprj_netlists.v"
`include "caravel_netlists.v"
`include "spiflash.v"

module irq_tb;

	reg clock;
	reg power1;
	reg power2;

	always #10 clock <= (clock === 1'b0);

	initial begin
		clock <= 0;
	end

	initial begin
		$dumpfile("irq.vcd");
		$dumpvars(0, irq_tb);
		
		// Repeat cycles of 1000 clock edges as needed to complete testbench
		repeat (12) begin
			repeat (1000) @(posedge clock);
			$display("+1000 cycles");
		end
		$display("%c[1;31m",27);
		`ifdef GL
			$display ("Monitor: Timeout, Test IRQ (GL) Failed");
		`else
			$display ("Monitor: Timeout, Test IRQ (RTL) Failed");
		`endif
		$display("%c[0m",27);
		$finish;
	end

	wire [37:0] mprj_io;	// Most of these are no-connects
	wire [3:0]  status;
	wire [3:0] checkbits;

	assign checkbits = mprj_io[19:16];
	assign status = mprj_io[35:32];
	assign mprj_io[3] = 1'b1;	// Force CSB high.

	wire flash_csb;
	wire flash_clk;
	wire flash_io0;
	wire flash_io1;
	wire gpio;

	reg RSTB;

	// Monitor
	initial begin
		wait(status == 4'h5);
		`ifdef GL
			$display("Monitor: Test IRQ (GL) Started");
		`else
			$display("Monitor: Test IRQ (RTL) Started");
		`endif
		wait(status == 4'ha);
		wait(status == 4'hc);
		`ifdef GL
			$display("Monitor: Test IRQ (GL) Passed");
		`else
			$display("Monitor: Test IRQ (RTL) Passed");
		`endif
		$finish;
	end

	initial begin
		RSTB <= 1'b0;
		#1000;
		RSTB <= 1'b1;		// Release reset
		#2000;
	end

	initial begin			// Power-up
		power1 <= 1'b0;
		power2 <= 1'b0;
		#200;
		power1 <= 1'b1;
		#200;
		power2 <= 1'b1;
	end
               
	always @(checkbits, status) begin
		#1 $display("GPIO state = %b (%b)", checkbits, status);
	end

	wire VDD3V3;
	wire VDD1V8;
	wire VSS;

	assign VDD3V3 = power1;
	assign VDD1V8 = power2;
	assign VSS = 1'b0;

	// These are the mappings of mprj_io GPIO pads that are set to
	// specific functions on startup:
	//
	// JTAG      = mgmt_gpio_io[0]              (inout)
	// SDO       = mgmt_gpio_io[1]              (output)
	// SDI       = mgmt_gpio_io[2]              (input)
	// CSB       = mgmt_gpio_io[3]              (input)
	// SCK       = mgmt_gpio_io[4]              (input)
	// ser_rx    = mgmt_gpio_io[5]              (input)
	// ser_tx    = mgmt_gpio_io[6]              (output)
	// irq       = mgmt_gpio_io[7]              (input)

	caravel uut (
		.vddio	  (VDD3V3),
		.vssio    (VSS),
		.vdda     (VDD3V3),
		.vssa     (VSS),
		.vccd     (VDD1V8),
		.vssd     (VSS),
		.vdda1    (VDD3V3),
		.vdda2    (VDD3V3),
		.vssa1    (VSS),
		.vssa2    (VSS),
		.vccd1    (VDD1V8),
		.vccd2    (VDD1V8),
		.vssd1    (VSS),
		.vssd2    (VSS),
		.clock    (clock),
		.gpio     (gpio),
		.mprj_io  (mprj_io),
		.flash_csb(flash_csb),
		.flash_clk(flash_clk),
		.flash_io0(flash_io0),
		.flash_io1(flash_io1),
		.resetb   (RSTB)
	);

	spiflash #(
		.FILENAME("irq.hex")
	) spiflash (
		.csb(flash_csb),
		.clk(flash_clk),
		.io0(flash_io0),
		.io1(flash_io1),
		.io2(),			// not used
		.io3()			// not used
	);

endmodule
