# Description:

This \[README.md\](./README.md) consists list Efabless MPW shuttle
design list.

Based on \`Project Number\` you can view respective project details
using the following
\[URL\]([<u>https://platform.efabless.com/projects/104</u>](https://platform.efabless.com/projects/104))
vice-versa replace specific project number to know more about the
projects.

To view MPW CI linked design repo for each project refer
\[gitmodules\](../.gitmodules)

<table>
<colgroup>
<col style="width: 16%" />
<col style="width: 7%" />
<col style="width: 32%" />
<col style="width: 16%" />
<col style="width: 26%" />
</colgroup>
<thead>
<tr class="header">
<th>Project Name</th>
<th>Project Number</th>
<th>Description</th>
<th>Project Owner</th>
<th>CI Design Name/CI Script Name</th>
</tr>
<tr class="odd">
<th>MPW-2 Shuttle</th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
<tr class="header">
<th>Subservient</th>
<th>104</th>
<th>This project consists of an ASIC-adapted version of the award-winning bit-serial RISC-V processor SERV</th>
<th>Klas Nordmark</th>
<th>subservient</th>
</tr>
<tr class="odd">
<th>Caravel_FPU</th>
<th>109</th>
<th>A floating-point unit (FPU), also referred to as a numeric co-processor, is a dedicated processing unit that manipulates numbers more quickly than the basic microprocessor circuit.</th>
<th>Komal Javed</th>
<th>FPU</th>
</tr>
<tr class="header">
<th>Alperens SOC</th>
<th>114</th>
<th>Custom Risc V processor design</th>
<th>Alperen Bolat</th>
<th>counter_alperen</th>
</tr>
<tr class="odd">
<th>Caravel-Sermo</th>
<th>116</th>
<th>The project implements a PID controller using encoder feedback and single channel of PWM output and is capable of driving a DC motor. The module configuration and data registers are accessible through Wishbone slave interface.</th>
<th>Tayyeb Mahmood</th>
<th>counter_eeuet</th>
</tr>
<tr class="header">
<th>Caravel_Multi_encoder</th>
<th>128</th>
<th>This work is an integrated multi purpose encoder design which can simultaneously get two 32-bit data and a key of 32-bit size for generating 32-bit encoded data.</th>
<th>Manikandan Nagarajan</th>
<th>multi_encoder</th>
</tr>
<tr class="odd">
<th>FuseRISC</th>
<th>134</th>
<th>FuseRISC will demonstrate the benefits of the tight coupling of RISC-V cores and eFPGA fabric for tensorflow micro applications.</th>
<th>Andrew Attwood</th>
<th><p>fuserisc core_sram</p>
<p>fuserisc wb_mem_split</p>
<p>fuserisc eFPGA_CPU_TOP</p></th>
</tr>
<tr class="header">
<th>io_expander</th>
<th>147</th>
<th>A gpio expander for the caravel harness to realize a small microcontroller</th>
<th>Siva Prasad</th>
<th>soc_io_expander</th>
</tr>
<tr class="odd">
<th>SHA1 engine</th>
<th>151</th>
<th>The SHA1 engine, while not the most secure nowadays, is still used by git commits and TPM PCR values. It has the implementation of RFC3174 using Method 1 along with a WishBone implementation to slurp up 512 bits and then in 160 cycles provide the digest values.</th>
<th>Konrad Rzeszutek Wilk</th>
<th>SHA1_engine</th>
</tr>
<tr class="header">
<th>Wishbone CAN</th>
<th>153</th>
<th>An implementation of a CAN bus controller as a wishbone peripheral for the open MPW shuttle</th>
<th>Zachary Ellis</th>
<th>wishbone_CAN</th>
</tr>
<tr class="odd">
<th>YONGA-LZ4 Decoder</th>
<th>162</th>
<th>YONGA-LZ4 Decoder is an implementation of the decoder of the popular LZ4 compression algorithm.</th>
<th>Abdullah YILDIZ</th>
<th>yonga-lz4-decoder</th>
</tr>
<tr class="header">
<th>Subservient SOC</th>
<th>166</th>
<th>SERV is a bit-serial CPU which means that the internal datapath is one bit wide and it is the world's smallest CPU. Subservient SOC consists of multiple SERV modules each connected with openram memory</th>
<th>Priyanka Dutta</th>
<th>subservient_SOC</th>
</tr>
<tr class="odd">
<th>AXI DMA using Spinal HDL</th>
<th>175</th>
<th>This is a DMA controller with AMBA AXI4 interface. This DMA controller is part of an ongoing effort to build an SoC with the state-of-art open source hardware development kits, such as Spinal HDL and cocotb.</th>
<th>Pu Wang</th>
<th>axi_dma_wrapper</th>
</tr>
<tr class="header">
<th>caravel_dsp2</th>
<th>180</th>
<th>DSP Functions</th>
<th>Jayakumar Janarthanam</th>
<th>caravel_dsp</th>
</tr>
<tr class="odd">
<th>Caravel_Multi_encoder-v1</th>
<th>194</th>
<th>Multipurpose integrated encoder</th>
<th>Manikandan Nagarajan</th>
<th></th>
</tr>
<tr class="header">
<th>FABulous_Sky</th>
<th>202</th>
<th>Demonstration of the Fabulous FPGA design flow using the Skywater 130 process. The design flow includes the specification of the routing fabric, individual tiles, and the exact fabric description.</th>
<th>Nguyen Dao</th>
<th>eFPGA_v3_wrapper</th>
</tr>
<tr class="odd">
<th>Space_Shuttle</th>
<th>214</th>
<th>The main goal of this project is to assess the reliability of the SkyWater 130nm manufacturing process and Open Source PDK, as well as to evaluate different reliability mitigation techniques. Currently, the space industry relies on custom designs implemented with older mature manufacturing technologies such as 130nm or 65nm, which feature fault-tolerant and radiation hardening features.</th>
<th>Ahmad Nofal</th>
<th>space_controller</th>
</tr>
<tr class="header">
<th>azadi_soc_ibex</th>
<th>218</th>
<th>Azadi is an SoC with a 32-bit RISC-V signal core extended version of ibex we named it "buraq", it is a 3-stage pipeline core that implements the RV32IMF instruction set architecture, a limited number of peripherals UART, SPI, GPIO, PWM, and timer.</th>
<th>Zeeshan Rafique</th>
<th>azadi_soc</th>
</tr>
<tr class="odd">
<th>MPW-3 Shuttle</th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
<tr class="header">
<th>ToolTest gpioCtrl</th>
<th>382</th>
<th>Digital test design with simple GPIO control for toolchain testing</th>
<th>Sebastian Wiebking</th>
<th>GpioCtrl</th>
</tr>
<tr class="odd">
<th>Zero to ASIC group submission MPW3</th>
<th>392</th>
<th>MPW3 submission</th>
<th>Matt Venn</th>
<th>counter_rgb</th>
</tr>
<tr class="header">
<th>caravel_jacaranda-8</th>
<th>413</th>
<th>Jacaranda-8 is an educational ISA for home-build CPU beginners. This project implements the microarchitecture: CHARLATAN which is a simple implementation of Jacaranda-8 ISA.</th>
<th>Yuki Azuma</th>
<th>jacaranda8</th>
</tr>
<tr class="odd">
<th>MBIST Controller</th>
<th>422</th>
<th>MBIST is a self-testing and repair mechanism which tests the memories through an effective set of algorithms to detect possibly all the faults that could be present inside a typical memory cell whether it is stuck-at (SAF), transition delay faults (TDF), coupling (CF) or neighborhood pattern sensitive faults (NPSF).</th>
<th>Dinesh Annayya</th>
<th><p>mbist_ctrl mbist1</p>
<p>mbist_ctrl mbist2</p>
<p>mbist_ctrl wb_host</p>
<p>mbist_ctrl wb_interconnect</p></th>
</tr>
<tr class="header">
<th>VSD SRAM</th>
<th>424</th>
<th>Aims at design of a SRAM cell array with a configuration of 1.8 V operating voltage and access time less than 2.5ns using Google SkyWater SKY130 PDKs and OpenRAM memory compiler.</th>
<th>Shon Taware</th>
<th>counter_vsdsram</th>
</tr>
<tr class="odd">
<th>Efabless processor</th>
<th>427</th>
<th>Basic design to familiarize with this service</th>
<th>Andrew Feldman</th>
<th>counter_efab</th>
</tr>
<tr class="header">
<th>Sudoku Accelerator</th>
<th>428</th>
<th>Sudoku accelerator module that is capable of running an 'only candidate' pass in 23 cycles and a 'naked singles' pass in 108 cycles.</th>
<th>Andrea Nall</th>
<th>sudoku-accelerator</th>
</tr>
<tr class="odd">
<th>YONGA-SERV Accelerator</th>
<th>434</th>
<th>YONGA-SERV Accelerator includes the award-winning SERV RISC-V processor with a matrix multiplication accelerator.</th>
<th>Abdullah YILDIZ</th>
<th>yonga-serv-accelerator</th>
</tr>
<tr class="header">
<th>YONGA-100M Ethernet</th>
<th>436</th>
<th>YONGA-100M Ethernet is based on the implementation of Alex Forencich's 100 Mbps Ethernet design.</th>
<th>Abdullah YILDIZ</th>
<th>yonga-100m-ethernet</th>
</tr>
<tr class="odd">
<th>TreePRAM</th>
<th>449</th>
<th>Implements a version of the parallel random-access machine used in theoretical computer science courses with a memory sharing model based on a binary tree of processor cores.</th>
<th>htfab</th>
<th>treepram</th>
</tr>
<tr class="header">
<th>Randsack</th>
<th>451</th>
<th>Random number generators and PUFs. Also a few simple peripherals to output the random values (PWM, etc).</th>
<th>Harrison Pham</th>
<th>randsack</th>
</tr>
<tr class="odd">
<th>Fixed2Float_Converter</th>
<th>455</th>
<th>This project is an implementation for conversion of 19bit fixed point number to single precision IEEE floating point number.</th>
<th>Dhayalakumar Maruthamuthu</th>
<th>Fixed2Float</th>
</tr>
<tr class="header">
<th>Crypto Accelerator v2</th>
<th>456</th>
<th>This is a cryptography accelerator ASIC designed using the SKY130 process node. It includes key-limited hardware implementations of cores for AES128/AES256 and SHA256, as well as an experimental VGA-based game demo. The eventual goal of this project is to use it for embedded/IoT security applications.</th>
<th>Anish Singhani</th>
<th>crypto_accelerator accelerator_top</th>
</tr>
<tr class="odd">
<th>caravel_peripheral_extender</th>
<th>458</th>
<th>An attempt to integrate various peripherals like I2C, I2S, UART, SPI, QSPI , JTAG, PWM, GPIO , WS281B led the controller to the Caravel SoC via the wishbone bus. The user address space is exploited as the register space for this controller.</th>
<th>Siva Prasad</th>
<th>peripheral_extender</th>
</tr>
<tr class="header">
<th>Approximate Multiplier</th>
<th>460</th>
<th>This project is an implementation of an approximate multiplier published in ACM TODAES journal 2021, titled "Energy Efficient Error Resilient Multiplier Using Low-power Compressors".</th>
<th>skandha deepsita</th>
<th>MPW3_Approximate_Multiplier</th>
</tr>
<tr class="odd">
<th>VSDMemSoC</th>
<th>483</th>
<th>VSDMemSoC is a small SoC including a RISCV-based processor named RVMYTH and an external 1kB SRAM Instruction Memory (IMem) to separate the processor core and the IMem.</th>
<th>Mufutau Akuruyejo</th>
<th>vsdmemsoc rvmyth_core</th>
</tr>
<tr class="header">
<th>pre-trained neural network for MNIST</th>
<th>486</th>
<th>This project implements a pre-trained neural network for hand-written digits from MNIST dataset.</th>
<th>mxiangyue</th>
<th>FCNet_prj</th>
</tr>
<tr class="odd">
<th>Caravel SRAM Test</th>
<th>496</th>
<th>The project instantiates an SRAM block in the user project area for testing.</th>
<th>mtomlinson</th>
<th>sram_test</th>
</tr>
<tr class="header">
<th>PWM_Test</th>
<th>503</th>
<th>PWM-Generator</th>
<th>Karthi Keyan</th>
<th>PWM-Generator</th>
</tr>
<tr class="odd">
<th>Key Value store</th>
<th>509</th>
<th>A key value store using a wishbone interface, developed using migen.</th>
<th>Giray Pultar</th>
<th>keyvalue_caravel</th>
</tr>
<tr class="header">
<th>Caravel</th>
<th>515</th>
<th>A template SoC for Google sponsored Open MPW shuttles for SKY130</th>
<th>hhj1107</th>
<th>counter_hhj</th>
</tr>
<tr class="odd">
<th>picorF0</th>
<th>517</th>
<th>picoRF0 - a multicycle CPU core running a simplified RISC ISA (used for teaching, normally on FPGAs). Connected to caravel for memory interfacing and I/O usage</th>
<th>Anish Singhani</th>
<th>picorF0</th>
</tr>
<tr class="header">
<th>VSDBabySoC</th>
<th>519</th>
<th>VSDBabySoC is a small SoC including PLL, DAC, and a RISCV-based processor named RVMYTH.</th>
<th>Mufutau Akuruyejo</th>
<th><p>vsdbabysoc</p>
<p>vsdbabysoc vsdbabsoc_wrapper</p></th>
</tr>
<tr class="odd">
<th>ROTFPGA</th>
<th>522</th>
<th>A reconfigurable logic circuit made of identical rotatable copies of the tile shown above containing a NAND gate, a D flip-flop and a buffer.</th>
<th>htfab</th>
<th>rotfpga</th>
</tr>
<tr class="header">
<th>MPW-4 Shuttle</th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
<tr class="odd">
<th>yifive_a2</th>
<th>558</th>
<th>YiFive is a 32 bit RISC V based SOC design targeted for efabless Shuttle program. This project uses only open source tool set for simulation,synthesis and backend tools.</th>
<th>Manikantasai2</th>
<th><p>yifive_a2 clk_buf</p>
<p>yifive_a2 clk_skew_adjust</p>
<p>yifive_a2 glbl_cfg</p>
<p>yifive_a2 sdram</p>
<p>yifive_a2 spi_master</p>
<p>yifive_a2 syntacore</p>
<p>yifive_a2 uart_i2cm_usb</p></th>
</tr>
<tr class="header">
<th>Logic BIST</th>
<th>566</th>
<th>Logic BIST with Scan Chain to detect struck at fault</th>
<th>Dinesh Annayya</th>
<th>logic_bist</th>
</tr>
<tr class="odd">
<th>Azadi_II</th>
<th>576</th>
<th>Azadi-II is aimed to extend the base ibex core(RV32IMC) with a fully functional single precision floating point unit and RISCV compliant debug module for on chip debugging and some standard peripherals for communicating with other devices. all these modules will be interlinked using standard Tilelink Bus protocol.</th>
<th>Azadi mpw4</th>
<th>counter_azadi</th>
</tr>
<tr class="header">
<th>Space Controller</th>
<th>583</th>
<th>This design is a radiation tolerant UART server that can be used for low level control of multiple input/output ports during a radiation testing campaign. The system features triple redundancy in order to ensure that the commands are properly executed.</th>
<th>Iván Rodríguez Ferrández</th>
<th>space_controller</th>
</tr>
<tr class="odd">
<th>Zero to ASIC Course MPW-2 re-run</th>
<th>585</th>
<th>Re-hardened MPW2 group submission to fix clock issues and re-submit for MPW4.</th>
<th>Matt Venn</th>
<th>counter_mpw4_mv</th>
</tr>
<tr class="header">
<th>REST</th>
<th>591</th>
<th>REST(Resource efficient SRAM based TCAM) is test project for experimenting the SRAM based TCAMs in ASIC.</th>
<th>Sajjad Ahmed</th>
<th>counter_REST</th>
</tr>
<tr class="odd">
<th>Zero to ASIC course</th>
<th>596</th>
<th>Designs from the Zero to ASIC course</th>
<th>Matt Venn</th>
<th>counter_display_mv</th>
</tr>
<tr class="header">
<th>junga_soc_mpw4</th>
<th>611</th>
<th>Simple vexriscv based SoC</th>
<th>hhj1107</th>
<th>junga_soc</th>
</tr>
<tr class="odd">
<th>Updown Counter (Test)</th>
<th>614</th>
<th>A simple Updown counter for demo purpose</th>
<th>PRANAV LULU</th>
<th>updown_caravel</th>
</tr>
<tr class="header">
<th>ICESOC</th>
<th>625</th>
<th>Ibex Crypto eFPGA SoC</th>
<th>Nguyen Dao</th>
<th>counter_ICESOC</th>
</tr>
<tr class="odd">
<th>SORIC</th>
<th>635</th>
<th>A SoC with two crypto-supported RISC-V cores.</th>
<th>Thinh Pham</th>
<th><p>soric_project crypto_core</p>
<p>soric_project flexbex_core</p>
<p>soric_project soric_soc</p></th>
</tr>
<tr class="header">
<th>ASIC Design of Fault Tolernt 16-Bit ALU</th>
<th>636</th>
<th>This project is the ASIC design of a 16-bit fault-tolerant ALU. As errors are very costly in mission-critical applications. The proposed ALU is implemented for space application by using the concept of hardware redundancy (TMR) with high fault-masking ratio (FMR) voter logic to tolerate the impacts of single event upset generated by radiation etc. and assure reliable functionality.</th>
<th>Uzair Ahmad</th>
<th>RAD_HARD_ALU</th>
</tr>
<tr class="odd">
<th>Kasirga K0</th>
<th>638</th>
<th>RISC-V SoC</th>
<th>İsmail Emir Yüksel</th>
<th>kasirga_k0 c0_system_macro</th>
</tr>
<tr class="header">
<th>caravel_koggestone_adder_project</th>
<th>640</th>
<th><p>16-bit kogge-stone adder Verilog implementation.</p>
<p>In computing, the Kogge–Stone adder is a parallel prefix form carry look-ahead adder.</p></th>
<th>Mohammed Zakir Hussain</th>
<th>koggestone_adder</th>
</tr>
<tr class="odd">
<th>Subservient-MPW4</th>
<th>641</th>
<th>An ASIC-adapted version of the award-winning bit-serial RISC-V processo SERV, resubmitted due to expected issues with mpw2. Slightly modified to meet timing.</th>
<th>Klas Nordmark</th>
<th>subservient</th>
</tr>
<tr class="header">
<th>Key Value store</th>
<th>644</th>
<th>A key value store using a wishbone interface, developed using migen.</th>
<th>Giray Pultar</th>
<th>keyvalue_caravel</th>
</tr>
<tr class="odd">
<th>Karplus-Strong Guitar</th>
<th>648</th>
<th>Physically modeled guitar strings using the Karplus-Strong algorithm with some extensions by Jaffe &amp; Smith.</th>
<th>htfab</th>
<th>ks-guitar</th>
</tr>
<tr class="header">
<th>Randsack B1</th>
<th>659</th>
<th>Random number generators and PUFs. Includes fixes for compatibility with the new litex based management SoC.</th>
<th>Harrison Pham</th>
<th><p>randsack collapsering_macro</p>
<p>randsack digitalcore_macro</p>
<p>randsack ringosc_macro</p></th>
</tr>
<tr class="odd">
<th>Karplus-Strong Guitar</th>
<th>660</th>
<th>Two string version of Karplus-Strong Guitar</th>
<th>htfab</th>
<th>ks-guitar-2s</th>
</tr>
<tr class="header">
<th>APPROXIMATE Multiplier</th>
<th>664</th>
<th>Approximate Image Processing is a field of research being explored to meet the computing demands with less resources while sacrificing some of the accuracy. Image processing is one such application where the accuracy can be dropped for increased performance in terms of power, time etc.</th>
<th>Rana Muhammad</th>
<th>APPROX_MULT</th>
</tr>
<tr class="odd">
<th>MPW-5 Shuttle</th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
<tr class="header">
<th>riscduino-SCore(S2)</th>
<th>670</th>
<th>A arduino pin compatible Single RISCV 32 Bit core Project</th>
<th>Dinesh Annayya</th>
<th>riscduino rd_yifive</th>
</tr>
<tr class="odd">
<th>mpw5_cache</th>
<th>673</th>
<th>Integrated a smaller version of the 4-way set associative 256B L1 cache as user project area in caravel SoC.</th>
<th>Shivani Shah</th>
<th>mpw5_L1cache</th>
</tr>
<tr class="header">
<th>NAND Flash MPW-5</th>
<th>690</th>
<th>Small hand-drawn NAND flash array.</th>
<th>Brandon Ong</th>
<th>NAND_Flash5</th>
</tr>
<tr class="odd">
<th>PSRAM Interface with PRNG</th>
<th>708</th>
<th>HyperRAM interface by Steve Goldsmith with an ACORN PRNG by Zhenle Cao.</th>
<th>Steven Goldsmith</th>
<th>PSRAM_PRANG</th>
</tr>
<tr class="header">
<th>riscduino-DCore</th>
<th>718</th>
<th>Riscduino is a Dual 32 bit RISC V based SOC design pin compatible to arudino platform and this soc targeted for efabless Shuttle program.</th>
<th>Dinesh Annayya</th>
<th>riscduino_dcore rdd_ycr2_iconnect</th>
</tr>
<tr class="odd">
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
<tr class="header">
<th>PWM</th>
<th>727</th>
<th>PWM (Pulse Width Modulation) module</th>
<th>Serdar Ünal</th>
<th>pwm_openmpw</th>
</tr>
<tr class="odd">
<th>Test project</th>
<th>733</th>
<th>Test project</th>
<th>Andrej Čižmárik</th>
<th>counter_TestSOC</th>
</tr>
<tr class="header">
<th>delta-sigma audio DAC</th>
<th>736</th>
<th>As a classroom project at Johannes Kepler University, we are designing a delta-sigma audio DAC, with a maximized digital and minimized analog content. The specifications are 16b, 48kHz sample rate with direct drive of line-out or headphones (load impedance 16 to 600Ohm). The design supports 1st or 2nd-order delta-sigma, volume control, and a FIFO asynchronous interface to a host system.</th>
<th>Harald Pretl</th>
<th>IIC_AudioDAC</th>
</tr>
<tr class="odd">
<th>ORDER_PRGA</th>
<th>742</th>
<th>A 512-LUT4 FPGA generated using PRGA (Princeton Reconfigurable Gate Array); An 8x8 array of CLBs, each containing 8 LUT4s and 8 DFFs and a local programmable crossbar for intra-CLB routing; 24-track routing channel with L1 tracks; Capable of implementing 16 out of 30 ISCAS'89 circuits.</th>
<th>Georgios T</th>
<th>mpw5_prga mpw5_prga_tile_clb</th>
</tr>
<tr class="header">
<th>ChristmasTreeController</th>
<th>746</th>
<th>A Christmas tree controller that include : Infrared receiver (protocol NEC), StepMotor controller (full-step, half-step, with strength control), Led string controller (compatibles WS2812B), Pseudo-random generator (32 bits)</th>
<th>Julien OURY</th>
<th>ChirstmasTreeController</th>
</tr>
<tr class="odd">
<th>Zero to ASIC MPW4 rerun on MPW5</th>
<th>753</th>
<th>Zero to ASIC MPW4 rerun on MPW5</th>
<th>Matt Venn</th>
<th>counter_mpw4_mv</th>
</tr>
<tr class="header">
<th>Azadi_III</th>
<th>755</th>
<th>The Azadi-III includes the following peripherals. PWM 2-Channel, OpenRAM 1KB x 4 for ICCM 1KB x 4 for DCCM Ibex core(named as brq_core) FPU (single-precision) TileLink (UL) UART QSPI SPI GPIOs Design Goals: Azadi-III is aimed to extend the base ibex core(RV32IMC) with a fully functional single precision floating point unit and RISCV compliant debug module for on chip debugging and some standard peripherals for communicating with other devices.</th>
<th>Rameen Anwar</th>
<th>azadi_soc_iii</th>
</tr>
<tr class="odd">
<th>Power Monitoring Microcontroller ASIC MARMOT</th>
<th>759</th>
<th>An application specific RISC-V microcontroller, MARMOT, was developed from a total scratch to a GDS in exactly one month without prior knowledge of OpenLane digital design tool flow. MARMOT stands for a Microcontroller Autonomous Resistant to Malware, Obtrusions and Tampering. Its IPs were derived from the Rocket SoC generator and mated to the Sky130A Caravel Harness. A MARMOT ASIC design objective is to capture high-frequency sampling output of the analog-to-digital converter connected to the current sensor in power rails of IoT power supply.</th>
<th>Shumpei Kawasaki</th>
<th>marmot_asic</th>
</tr>
<tr class="header">
<th>qf105</th>
<th>760</th>
<th>This is a simple, microcontroller-style SoC based around a Lanai core. Lanai is a ~mysterious~ RISC core that happens to have an LLVM target, and to which I've successfully ported rustc (to be upstreamed). The core implementation is quite spartan: 3-stage, in-order. Currently targeting a 50MHz fclk.</th>
<th>Serge Bazanski</th>
<th><p>qf100 qf_mkLanaiCPU</p>
<p>qf100 qf_mkLanaiFrontend</p>
<p>qf100 qf_mkQF100Fabric</p>
<p>qf100 qf_mkQF100GPIO</p>
<p>qf100 qf_mkQF100KSC</p>
<p>qf100 qf_mkQF100SPI</p>
<p>qf100 qf_wrapper</p></th>
</tr>
<tr class="odd">
<th>kasirga-c0-mpw-5</th>
<th>761</th>
<th>RISC-V SoC</th>
<th>Yahya Can Tuğrul</th>
<th>mpw-5c-C0</th>
</tr>
<tr class="header">
<th>ALU</th>
<th>763</th>
<th>The ALU_XOR design implemented uses two copies of ALUs, one being the golden reference, and compares the output for any differences. This project aims to analyze the faults injected in real-time to identify the location/bits that have any impacts.</th>
<th>Janani Aravind</th>
<th><p>alu_xor</p>
<p>alu_xor alu_xor_wrapper</p></th>
</tr>
<tr class="odd">
<th>ActuatorController</th>
<th>765</th>
<th>This design is to precisely control the timing sequence of 10 micro-motors. The SPI interface allows a microcontroller to pass the required commands to adjust the firing order and width of the PWM pulses.</th>
<th>Josh Stevens</th>
<th><p>Actuator_Controller AC_actuator_driver_controller</p>
<p>Actuator_Controller AC_cells_controller</p>
<p>Actuator_Controller AC_memory_controler</p>
<p>Actuator_Controller AC_spi_mod</p>
<p>Actuator_Controller AC_top</p></th>
</tr>
<tr class="header">
<th>Raster_engine</th>
<th>766</th>
<th>An implementation of rasterization engine using Skywater 130 nm PDK.</th>
<th>Mehmet Fatih Gülakar</th>
<th>mpw5_raster_engine</th>
</tr>
<tr class="odd">
<th>FABulous_eFPGA</th>
<th>769</th>
<th>Demonstration of the open FABulous eFPGA using the OpenLane flow.</th>
<th>Nguyen Dao</th>
<th>mpw5_open_eFPGA</th>
</tr>
<tr class="header">
<th>LBIST-MBIST</th>
<th>771</th>
<th>Logic built-in self-test (or LBIST) is a form of built-in self-test (BIST) in which hardware and/or software is built into integrated circuits allowing them to test their own operation.</th>
<th>Dinesh Annayya</th>
<th><p>logic_bist LBIST_mbist_top1</p>
<p>logic_bist LBIST_mbist_top2</p></th>
</tr>
<tr class="odd">
<th>UETRV-ECore</th>
<th>776</th>
<th>The project is aimed at multi-axis motion control sub-system development. It integrates a RISC V 32I processor with a motor control module and is a complete SoC. The processor can boot from external flash (SPI interface) and supports vectored interrupts.</th>
<th>Muhammad Tahir</th>
<th><p>UETRV_Ecore UETRV_Core</p>
<p>UETRV_Ecore UETRV_Motor_Top</p>
<p>UETRV_Ecore UETRV_Wishbone_InterConnect</p></th>
</tr>
<tr class="header">
<th>junga_soc_mpw5</th>
<th>780</th>
<th>Simple vexriscv based SoC</th>
<th>Lena Hwang</th>
<th>junga_soc_mpw5</th>
</tr>
<tr class="odd">
<th>riscduino-QCore</th>
<th>782</th>
<th>Riscduino is a Quad 32 bit RISC V based SOC design pin compatible to arudino platform and this soc targeted for efabless Shuttle program.</th>
<th>Dinesh Annayya</th>
<th><p>riscduino_qcore rdq_uart_i2c_usb_spi_top</p>
<p>riscduino_qcore rdq_qspim_top</p>
<p>riscduino_qcore rdq_pinmux</p>
<p>riscduino_qcore rdq_ycr4_iconnect</p>
<p>riscduino_qcore rdq_ycr_core_top</p>
<p>riscduino_qcore rdq_ycr_intf</p></th>
</tr>
<tr class="header">
<th>Systolic_array</th>
<th>784</th>
<th>Each node is a Processing ELement (PE) which takes in 3 inputs and produces an output. Each PE shifts the data horizontally and vertically to the neighboring PEs every clock cycle. Systolic arrays access the memory only once, and all the PEs transfer the data to the nearby PEs, thus reducing the memory access.</th>
<th>Veerendra S Devaraddi</th>
<th>systolic_array</th>
</tr>
<tr class="odd">
<th>Asicle</th>
<th>788</th>
<th>Okay, so Wordle took the net by storm and was ported to a myriad of platforms including retro computers and microcontrollers with tight constraints. But have you played it on raw silicon yet?</th>
<th>Tamas Hubai</th>
<th>asicle</th>
</tr>
<tr class="header">
<th>4ft4</th>
<th>790</th>
<th>an MCS-4 clone (4004, 4001, 4002)</th>
<th>Andrew Foote</th>
<th>mpw5_4ft4</th>
</tr>
<tr class="odd">
<th>Hack SoC</th>
<th>791</th>
<th>Hardware implementation of the Hack Computer from the Nand to Tetris courses</th>
<th>Maximo Balestrini</th>
<th>hack_soc_wrapper</th>
</tr>
<tr class="header">
<th>RNG CHAOS</th>
<th>793</th>
<th>In this study, a digital RNG based on chaotic oscillators was implemented using the SKY130 process node.</th>
<th>Onur Karataş</th>
<th>rng_chaos</th>
</tr>
<tr class="odd">
<th>Factored MAC for Systolic Array Architectures</th>
<th>794</th>
<th>This is a factored MAC, in which we have designed the factored Radix-8 Booth Multiplier (16 bits) and accumulation is performed with 32 bits carry propagation adder (CPA). A radix-8 booth multiplier involves the dedicated pre-processing of complex booth recording on multiplier X and 3y=Y+2Y generation on the multiplicand Y.</th>
<th>KASHIF INAYAT</th>
<th><p>FMAC</p>
<p>FMAC FMAC_wrapper</p></th>
</tr>
<tr class="header">
<th>Microwatt MPW5</th>
<th>795</th>
<th>Microwatt is a 64 bit OpenPOWER core written in VHDL. It includes an IEEE 754 double-precision binary floating-point unit as well as supervisor support that allows it to run Linux. There are hard macros for the 2 multipliers (integer and floating point), the 2 cache RAMs (icache and dcache) and the 4kB main RAM.</th>
<th>Anton Blanchard</th>
<th>mpw5_microwatt Microwatt_FP_DFFRFile</th>
</tr>
<tr class="odd">
<th>PICO Design Resubmission MPW5</th>
<th>796</th>
<th>This project includes two different designs submitted as part of SSCS PICO-2021. The two designs are GPS Baseband Engine, Poly Silicon Resistor based Temperature sensor.</th>
<th>Ramakrishna P.V.</th>
<th>GPS_Baseband</th>
</tr>
<tr class="header">
<th>REST_II</th>
<th>798</th>
<th>REST(Resource efficient SRAM based TCAM) is a test project for experimenting with SRAM based TCAMs in ASIC.</th>
<th>Sajjad Ahmed</th>
<th>counter_REST</th>
</tr>
<tr class="odd">
<th>Pseudo-Secure Memory</th>
<th>800</th>
<th>Keeping your data secure. This project aims to secure data from adversaries. It has inherent SRAM to keep the data safe and they are kept as not plaintext but ciphered.</th>
<th>Sukru Uzun</th>
<th><p>secure-memory secure-memory-proj</p>
<p>secure-memory trng_wb_wrapper</p>
<p>secure-memory secure-memory-wrapper</p></th>
</tr>
<tr class="header">
<th>Asynchronous Fibonacci counter</th>
<th>808</th>
<th>The counter uses two phase dual rail logic. An asynchronous sequential logic circuit does not rely on the assumption that logic values only need to be valid within a window around the clock edge. Instead, the circuit needs to be valid all the time.</th>
<th>Gal Nadrag</th>
<th>async_fib2</th>
</tr>
</thead>
<tbody>
</tbody>
</table>
