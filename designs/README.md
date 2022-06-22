# Design Description

Refer [design description](./MPW_Design_Description.md), which consists of a
description of the Efabless MPW shuttle design list currently in
the CI. This [list](./MPW_Design_Description.md) have MPW shuttle
based designs details with following order:

-   `CI Design Name`
    -   `Project Name:`
    -   `Project Owner:`
    -   `Project Number:`
    -   `Description:`
    -   `Executable CI Script:`

## Design list

-   `Actuator_Controller`
    -   Project Name: ActuatorController
    -   Project Owner: Josh Stevens
    -   Project Number: [765](https://platform.efabless.com/projects/765)
    -   Description: This design is to precisely control the timing
         sequence of 10 micro-motors. The SPI interface allows a
         microcontroller to pass the required commands to adjust the
         firing order and width of the PWM pulses.
    -   Executable CI Script:
         [AC_actuator_driver_controller](../scripts/AC_actuator_driver_controller)
         | [AC_cells_controller](../scripts/AC_cells_controller) |
         [AC_memory_controler](../scripts/AC_memory_controler) |
         [AC_spi_mod](../scripts/AC_spi_mod) |
         [AC_top](../scripts/AC_top)

-   `alu_xor`
    -   Project Name: ALU
    -   Project Owner: Janani Aravind
    -   Project Number: [763](https://platform.efabless.com/projects/763)
    -   Description: The ALU_XOR design implemented uses two copies of
         ALUs, one being the golden reference, and compares the output
         for any differences. This project aims to analyze the faults
         injected in real-time to identify the location/bits that have
         any impacts.
    -   Executable CI Script: [alu_xor](../scripts/alu_xor) |
         [alu_xor_wrapper](../scripts/alu_xor_wrapper)

-   `APPROX_MULT`
    -   Project Name: APPROXIMATE Multiplier
    -   Project Owner: Rana Muhammad
    -   Project Number: [664](https://platform.efabless.com/projects/664)
    -   Description: Approximate Image Processing is a field of research
         being explored to meet the computing demands with less
         resources while sacrificing some of the accuracy. Image
         processing is one such application where the accuracy can be
         dropped for increased performance in terms of power, time etc.
    -   Executable CI Script: [APPROX_MULT](../scripts/APPROX_MULT)

-   `asicle`
    -   Project Name: Asicle
    -   Project Owner: Tamas Hubai
    -   Project Number: [788](https://platform.efabless.com/projects/788)
    -   Description: Okay, so Wordle took the net by storm and was
         ported to a myriad of platforms including retro computers and
         microcontrollers with tight constraints. But have you played
         it on raw silicon yet?
    -   Executable CI Script: [asicle](../scripts/asicle)

-   `async_fib2`
    -   Project Name: Asynchronous Fibonacci counter
    -   Project Owner: Gal Nadrag
    -   Project Number: [808](https://platform.efabless.com/projects/808)
    -   Description: The counter uses two phase dual rail logic. An
         asynchronous sequential logic circuit does not rely on the
         assumption that logic values only need to be valid within a
         window around the clock edge. Instead, the circuit needs to be
         valid all the time.
    -   Executable CI Script: [async_fib2](../scripts/async_fib2)

-   `axi_dma_wrapper`
    -   Project Name: AXI DMA using Spinal HDL
    -   Project Owner: Pu Wang
    -   Project Number: [175](https://platform.efabless.com/projects/175)
    -   Description: This is a DMA controller with AMBA AXI4 interface.
         This DMA controller is part of an ongoing effort to build an
         SoC with the state-of-art open source hardware development
         kits, such as Spinal HDL and cocotb.
    -   Executable CI Script: [axi_dma_wrapper](../scripts/axi_dma_wrapper)

-   `azadi_soc`
    -   Project Name: azadi_soc_ibex
    -   Project Owner: Zeeshan Rafique
    -   Project Number: [218](https://platform.efabless.com/projects/218)
    -   Description: Azadi is an SoC with a 32-bit RISC-V signal core
         extended version of ibex we named it "buraq", it is a 3-stage
         pipeline core that implements the RV32IMF instruction set
         architecture, a limited number of peripherals UART, SPI, GPIO,
         PWM, and timer.
    -   Executable CI Script: [azadi_soc](../scripts/azadi_soc)

-   `azadi_soc_iii_dft`
    -   Project Name: Azadi_DFT
    -   Project Owner: Rameen Anwar
    -   Project Number: [845](https://platform.efabless.com/projects/845)
    -   Description: The Azadi-III includes the following peripherals.
         PWM 2-Channel, OpenRAM 1KB x 4 for ICCM 1KB x 4 for DCCM Ibex
         core(named as brq_core) FPU (single-precision) TileLink (UL)
         UART QSPI SPI GPIOs Design Goals: Azadi-III is aimed to extend
         the base ibex core(RV32IMC) with a fully functional single
         precision floating point unit and RISCV compliant debug module
         for on chip debugging and some standard peripherals for
         communicating with other devices.
    -   Executable CI Script: [azadi_soc_iii_dft](../scripts/azadi_soc_iii_dft)

-   `caravel_dsp`
    -   Project Name: caravel_dsp2
    -   Project Owner: Jayakumar Janarthanam
    -   Project Number: [180](https://platform.efabless.com/projects/180)
    -   Description: DSP Functions
    -   Executable CI Script: [caravel_dsp](../scripts/caravel_dsp)

-   `ChirstmasTreeController`
    -   Project Name: ChristmasTreeController
    -   Project Owner: Julien OURY
    -   Project Number: [746](https://platform.efabless.com/projects/746)
    -   Description: A Christmas tree controller that include : Infrared
         receiver (protocol NEC), StepMotor controller (full-step,
         half-step, with strenght control), Led string controller
         (compatibles WS2812B), Pseudo-random generator (32bits)
    -   Executable CI Script: [ChirstmasTreeController](../scripts/ChirstmasTreeController)

-   `counter_alperen`
    -   Project Name: Alperens SOC
    -   Project Owner: Alperen Bolat
    -   Project Number: [114](https://platform.efabless.com/projects/114)
    -   Description: Custom Risc V processor design
    -   Executable CI Script: [counter_alperen](../scripts/counter_alperen)

-   `counter_azadi`
    -   Project Name: Azadi_II
    -   Project Owner: Wajeh
    -   Project Number: [576](https://platform.efabless.com/projects/576)
    -   Description: Azadi-II is aimed to extend the base ibex
         core(RV32IMC) with a fully functional single precision
         floating point unit and RISCV compliant debug module for on
         chip debugging and some standard peripherals for communicating
         with other devices. all these modules will be interlinked
         using standard Tilelink Bus protocol.
    -   Executable CI Script: [counter_azadi](../scripts/counter_azadi)

-   `counter_mpw4_mv`
    -   Project Name: Zero to ASIC Course MPW-2 re-run
    -   Project Owner: Matt Venn
    -   Project Number: [585](https://platform.efabless.com/projects/585)
    -   Description: Re-hardened MPW2 group submission to fix clock
         issues and re-submit for MPW4.
    -   Executable CI Script: [counter_mpw4_mv](../scripts/counter_mpw4_mv)

-   `counter_mpw4_mv`
    -   Project Name: Zero to ASIC MPW4 rerun on MPW5
    -   Project Owner: Matt Venn
    -   Project Number: [753](https://platform.efabless.com/projects/753)
    -   Description: Zero to ASIC MPW4 rerun on MPW5
    -   Executable CI Script: [counter_mpw4_mv](../scripts/counter_mpw4_mv)

-   `counter_eeuet`
    -   Project Name: Caravel-Sermo
    -   Project Owner: Tayyeb Mahmood
    -   Project Number: [116](https://platform.efabless.com/projects/116)
    -   Description: The project implements a PID controller using
         encoder feedback and single channel of PWM output and is
         capable of driving a DC motor. The module configuration and
         data registers are accessible through Wishbone slave
         interface.
    -   Executable CI Script: [counter_eeuet](../scripts/counter_eeuet)

-   `counter_efab`
    -   Project Name: Efabless processor
    -   Project Owner: Andrew Feldman
    -   Project Number: [427](https://platform.efabless.com/projects/427)
    -   Description: Basic design to familiarize with this service
    -   Executable CI Script: [counter_efab](../scripts/counter_efab)

-   `counter_hhj`
    -   Project Name: Caravel
    -   Project Owner: Lena Hwang
    -   Project Number: [515](https://platform.efabless.com/projects/515)
    -   Description: A template SoC for Google sponsored Open MPW
         shuttles for SKY130
    -   Executable CI Script: [counter_hhj](../scripts/counter_hhj)

-   `counter_ICESOC`
    -   Project Name: ICESOC
    -   Project Owner: Nguyen Dao
    -   Project Number: [625](https://platform.efabless.com/projects/625)
    -   Description: Ibex Crypto eFPGA SoC
    -   Executable CI Script: [counter_ICESOC](../scripts/counter_ICESOC)

-   `counter_mpw4_mv`
    -   Project Name: Zero to ASIC Course MPW-2 re-run
    -   Project Owner: Matt Venn
    -   Project Number: [585](https://platform.efabless.com/projects/585)
    -   Description: Re-hardened MPW2 group submission to fix clock
         issues and re-submit for MPW4.
    -   Executable CI Script: [counter_mpw4_mv](../scripts/counter_mpw4_mv)

-   `counter_REST`
    -   Project Name: REST
    -   Project Owner: Sajjad Ahmed
    -   Project Number: [591](https://platform.efabless.com/projects/591)
    -   Description: REST(Resource efficient SRAM based TCAM) is a test
         project for experimenting with SRAM based TCAMs in ASIC.
    -   Executable CI Script: [counter_REST](../scripts/counter_REST)

-   `counter_REST`
    -   Project Name: REST_II
    -   Project Owner: Sajjad Ahmed
    -   Project Number: [798](https://platform.efabless.com/projects/798)
    -   Description: REST(Resource efficient SRAM based TCAM) is a test
         project for experimenting with SRAM based TCAMs in ASIC.
    -   Executable CI Script: [counter_REST](../scripts/counter_REST)

-   `counter_rgb`
    -   Project Name: Zero to ASIC group submission MPW3
    -   Project Owner: Matt Venn
    -   Project Number: [392](https://platform.efabless.com/projects/392)
    -   Description: MPW3 submission
    -   Executable CI Script: [counter_rgb](../scripts/counter_rgb)

-   `counter_TestSOC`
    -   Project Name: Test project
    -   Project Owner: Andrej Čižmárik
    -   Project Number: [733](https://platform.efabless.com/projects/733)
    -   Description: Test project
    -   Executable CI Script: [counter_TestSOC](../scripts/counter_TestSOC)

-   `counter_vsdsram`
    -   Project Name: VSD SRAM
    -   Project Owner: Shon Taware
    -   Project Number: [424](https://platform.efabless.com/projects/424)
    -   Description: Aims at design of a SRAM cell array with a
         configuration of 1.8 V operating voltage and access time less
         than 2.5ns using Google SkyWater SKY130 PDKs and OpenRAM
         memory compiler.
    -   Executable CI Script: [counter_vsdsram](../scripts/counter_vsdsram)

-   `crypto_accelerator`
    -   Project Name: Crypto Accelerator v2
    -   Project Owner: Anish Singhani
    -   Project Number: [456](https://platform.efabless.com/projects/456)
    -   Description: This is a cryptography accelerator ASIC designed
         using the SKY130 process node. It includes key-limited
         hardware implementations of cores for AES128/AES256 and
         SHA256, as well as an experimental VGA-based game demo. The
         eventual goal of this project is to use it for embedded/IoT
         security applications.
    -   Executable CI Script: [accelerator_top](../scripts/accelerator_top)

-   `eFPGA_v3_wrapper`
    -   Project Name: FABulous_Sky
    -   Project Owner: Nguyen Dao
    -   Project Number: [202](https://platform.efabless.com/projects/202)
    -   Description: Demonstration of the Fabulous FPGA design flow
         using the Skywater 130 process. The design flow includes the
         specification of the routing fabric, individual tiles, and the
         exact fabric description.
    -   Executable CI Script: [eFPGA_v3_wrapper](../scripts/eFPGA_v3_wrapper)

-   `FCNet_neuron`
    -   Project Name: pre-trained neural network for MNIST
    -   Project Owner: mxiangyue
    -   Project Number: [486](https://platform.efabless.com/projects/486)
    -   Description: This project implements a pre-trained neural
         network for hand-written digits from MNIST dataset.
    -   Executable CI Script: [FCNet_neuron](../scripts/FCNet_neuron)

-   `Fixed2Float`
    -   Project Name: Fixed2Float_Converter
    -   Project Owner: Dhayalakumar Maruthamuthu
    -   Project Number: [455](https://platform.efabless.com/projects/455)
    -   Description: This project is implementation for conversion of
         19bit fixed point number to single precision IEEE floating
         point number.
    -   Executable CI Script: [Fixed2Float](../scripts/Fixed2Float)

-   `FMAC`
    -   Project Name: Factored MAC for Systolic Array Architectures
    -   Project Owner: KASHIF INAYAT
    -   Project Number: [794](https://platform.efabless.com/projects/794)
    -   Description: This is a factored MAC, in which we have designed
         the factored Radix-8 Booth Multiplier (16 bits) and
         accumulation is performed with 32 bits carry propagation adder
         (CPA). A radix-8 booth multiplier involves the dedicated
         pre-processing of complex booth recording on multiplier X and
         3y=Y+2Y generation on the multiplicand Y.
    -   Executable CI Script: [FMAC](../scripts/FMAC) |
         [FMAC_wrapper](../scripts/FMAC_wrapper)

-   `FPU`
    -   Project Name: Caravel_FPU
    -   Project Owner:Komal Javed
    -   Project Number: [109](https://platform.efabless.com/projects/109)
    -   Description: A floating-point unit (FPU), also referred to as
         numeric co-processor, is a dedicated processing unit that
         manipulates numbers more quickly than the basic microprocessor
         circuit.
    -   Executable CI Script: [FPU](../scripts/FPU)

-   `fuserisc`
    -   Project Name: FuseRISC
    -   Project Owner: Andrew Attwood
    -   Project Number: [134](https://platform.efabless.com/projects/134)
    -   Description: FuseRISC will demonstrate the benefits of the tight
        coupling of RISC-V cores and eFPGA fabric for tensorflow micro
        applications. Two RISC-V cores will have ALU that are integrated
        directly with a customised eFPGA fabric generated using the FABulous
        eFPGA framework.
    -   Executable CI Script: [core_sram](../scripts/core_sram) |
         [wb_mem_split](../scripts/wb_mem_split) |
         [eFPGA_CPU_TOP](../scripts/eFPGA_CPU_TOP)

-   `GpioCtrl`
    -   Project Name: ToolTest gpioCtrl
    -   Project Owner: Sebastian Wiebking
    -   Project Number: [382](https://platform.efabless.com/projects/382)
    -   Description: Digital test design with simple GPIO control for
         toolchain testing
    -   Executable CI Script: [GpioCtr](../scripts/GpioCtrl)

-   `GPS_Baseband`
    -   Project Name: PICO Design Resubmission MPW5
    -   Project Owner: Ramakrishna P.V.
    -   Project Number: [796](https://platform.efabless.com/projects/796)
    -   Description: This project includes two different designs
         submitted as part of SSCS PICO-2021. The two designs are GPS
         Baseband Engine, Polysilicon Resistor based Temperature
         sensor.
    -   Executable CI Script: [GPS_Baseband](../scripts/GPS_Baseband)

-   `hack_soc_wrapper`
    -   Project Name: Hack SoC
    -   Project Owner: Maximo Balestrini
    -   Project Number: [791](https://platform.efabless.com/projects/791)
    -   Description: Hardware implementation of the Hack Computer from
         the Nand to Tetris courses
    -   Executable CI Script: [hack_soc_wrapper](../scripts/hack_soc_wrapper)

-   `IIC_AudioDAC`
    -   Project Name: delta-sigma audio DAC
    -   Project Owner: Harald Pretl
    -   Project Number: [736](https://platform.efabless.com/projects/736)
    -   Description: As a classroom project at Johannes Kepler
         University, we are designing a delta-sigma audio DAC, with a
         maximized digital and minimized analog content. The
         specifications are 16b, 48kHz sample rate with direct drive of
         line-out or headphones (load impedance 16 to 600Ohm). The
         design supports 1st or 2nd-order delta-sigma, volume control,
         and a FIFO asynchronous interface to a host system.
    -   Executable CI Script: [IIC_AudioDAC](../scripts/IIC_AudioDAC)

-   `jacaranda8`
    -   Project Name: caravel_jacaranda-8
    -   Project Owner: Yuki Azuma
    -   Project Number: [413](https://platform.efabless.com/projects/413)
    -   Description: Jacaranda-8 is educational ISA for home-build CPU
         beginners. This project implements the microarchitecture:
         CHARLATAN which is a simple implementation of Jacaranda-8 ISA.
    -   Executable CI Script: [jacaranda8](../scripts/jacaranda8)

-   `junga_soc`
    -   Project Name: junga_soc_mpw4
    -   Project Owner: Lena Hwang
    -   Project Number: [611](https://platform.efabless.com/projects/611)
    -   Description: Simple vexriscv based SoC
    -   Executable CI Script: [junga_soc](../scripts/junga_soc)

-   `junga_soc_mpw5`
    -   Project Name: junga_soc_mpw5
    -   Project Owner: Lena Hwang
    -   Project Number: [780](https://platform.efabless.com/projects/780)
    -   Description: Simple vexriscv based SoC
    -   Executable CI Script: [junga_soc_mpw5](../scripts/junga_soc_mpw5)

-   `kasirga_k0`
    -   Project Name: Kasirga K0
    -   Project Owner: İsmail Emir Yüksel
    -   Project Number: [638](https://platform.efabless.com/projects/638)
    -   Description: RISC-V SoC
    -   Executable CI Script: [c0_system_macro](../scripts/c0_system_macro)

-   `keyvalue_caravel`
    -   Project Name: Key Value store
    -   Project Owner: Giray Pultar
    -   Project Number: [509](https://platform.efabless.com/projects/509)
    -   Description: A key value store using a wishbone interface,
         developed using migen.
    -   Executable CI Script: [keyvalue_caravel](../scripts/keyvalue_caravel)

-   `koggestone_adder`
    -   Project Name: caravel_koggestone_adder_project
    -   Project Owner: Mohammed Zakir Hussain
    -   Project Number: [640](https://platform.efabless.com/projects/640)
    -   Description: 16-bit kogge-stone adder Verilog implementation.
    -   In computing, the Kogge–Stone adder is a parallel prefix form
         carry look-ahead adder.
    -   Executable CI Script: [koggestone_adder](../scripts/koggestone_adder)

-   `ks-guitar`
    -   Project Name: Karplus-Strong Guitar
    -   Project Owner: Tamas Hubai
    -   Project Number: [648](https://platform.efabless.com/projects/648)
    -   Description: Physically modeled guitar strings using the
         Karplus-Strong algorithm with some extensions by Jaffe &
         Smith.
    -   Executable CI Script: [ks-guitar](../scripts/ks-guitar)

-   `ks-guitar-2s`
    -   Project Name: Karplus-Strong Guitar (two-strings)
    -   Project Owner: Tamas Hubai
    -   Project Number: [660](https://platform.efabless.com/projects/660)
    -   Description: Two string version of Karplus-Strong Guitar
    -   Executable CI Script: [ks-guitar-2s](../scripts/ks-guitar-2s)

-   `logic_bist`
    -   Project Name: Logic BIST
    -   Project Owner: Dinesh Annaya
    -   Project Number: [566](https://platform.efabless.com/projects/566)
    -   Description: Logic BIST with Scan Chain to detect struck at
         fault
    -   Executable CI Script:

-   `logic_bist`
    -   Project Name: LBIST-MBIST
    -   Project Owner: Dinesh Annaya
    -   Project Number: [771](https://platform.efabless.com/projects/771)
    -   Description: Logic built-in self-test (or LBIST) is a form of
         built-in self-test (BIST) in which hardware and/or software is
         built into integrated circuits allowing them to test their own
         operation.
    -   Executable CI Script:
         [LBIST_mbist_top1](../scripts/LBIST_mbist_top1) |
         [LBIST_mbist_top2](../scripts/LBIST_mbist_top2)

-   `marmot_asic`
    -   Project Name: Power Monitoring Microcontroller ASIC MARMOT
    -   Project Owner: Shumpei Kawasaki
    -   Project Number: [759](https://platform.efabless.com/projects/759)
    -   Description: An application specific RISC-V microcontroller,
         MARMOT, was developed from a total scratch to a GDS in exactly
         one month without prior knowledge of OpenLane digital design
         tool flow. MARMOT stands for a Microcontroller Autonomous
         Resistant to Malware, Obtrusions and Tampering. Its IPs were
         derived from the Rocket SoC generator and mated to the Sky130A
         Caravel Harness. A MARMOT ASIC design objective is to capture
         high-frequency sampling output of the analog-to-digital
         converter connected to the current sensor in power rails of
         IoT power supply.
    -   Executable CI Script: [marmot_asic](../scripts/marmot_asic)

-   `mbist_ctrl`
    -   Project Name: MBIST Controller
    -   Project Owner: Dinesh Annaya
    -   Project Number: [422](https://platform.efabless.com/projects/422)
    -   Description: MBIST is a self-testing and repair mechanism which
         tests the memories through an effective set of algorithms to
         detect possibly all the faults that could be present inside a
         typical memory cell whether it is stuck-at (SAF), transition
         delay faults (TDF), coupling (CF) or neighborhood pattern
         sensitive faults (NPSF).
    -   Executable CI Script: [mbist1](../scripts/mbist1) |
         [mbist2](../scripts/mbist2) |
         [wb_host](../scripts/wb_host) |
         [wb_interconnect](../scripts/wb_interconnect)

-   `mpw5_4ft4`
    -   Project Name: 4ft4
    -   Project Owner: Andrew Foote
    -   Project Number: [790](https://platform.efabless.com/projects/790)
    -   Description: an MCS-4 clone (4004, 4001, 4002)
    -   Executable CI Script: [mpw5_4ft4](../scripts/mpw5_4ft4)

-   `mpw-5c-C0`
    -   Project Name: kasirga-c0-mpw-5
    -   Project Owner: Yahya Can Tuğrul
    -   Project Number: [761](https://platform.efabless.com/projects/761)
    -   Description: RISC-V SoC
    -   Executable CI Script: [mpw-5c-C0](../scripts/mpw-5c-C0)

-   `mpw5_L1cache`
    -   Project Name: mpw5_cache
    -   Project Owner: Shivani Shah
    -   Project Number: [673](https://platform.efabless.com/projects/673)
    -   Description: Integrated a smaller version of the 4-way set
         associative 256B L1 cache as user project area in caravel SoC.
    -   Executable CI Script: [mpw5_L1cache](../scripts/mpw5_L1cache)

-   `mpw6_microwatt`
    -   Project Name: Microwatt MPW6
    -   Project Owner: Anton Blanchard
    -   Project Number: [840](https://platform.efabless.com/projects/840)
    -   Description: Microwatt is a 64 bit OpenPOWER core written in
         VHDL. It includes an IEEE 754 double-precision binary
         floating-point unit as well as supervisor support that allows
         it to run Linux. There are hard macros for the 2 multipliers
         (integer and floating point), the 2 cache RAMs (icache and
         dcache) and the 4kB main RAM.
    -   Executable CI Script:
         [Microwatt_FP_DFFRFile](../scripts/Microwatt_FP_DFFRFile) |
         [Microwatt_multiply_add](../scripts/Microwatt_multiply_add)

-   `mpw5_open_eFPGA`
    -   Project Name: FABulous_eFPGA
    -   Project Owner: Nguyen Dao
    -   Project Number: [769](https://platform.efabless.com/projects/769)
    -   Description: Demonstration of the open FABulous eFPGA using the
         OpenLane flow.
    -   Executable CI Script: [mpw5_open_eFPGA](../scripts/mpw5_open_eFPGA)

-   `mpw6_prga`
    -   Project Name: ORDER_PRGA
    -   Project Owner: Georgios T
    -   Project Number: [968](https://platform.efabless.com/projects/968)
    -   Description: A 512-LUT4 FPGA generated using PRGA (Princeton
         Reconfigurable Gate Array); An 8x8 array of CLBs, each
         containing 8 LUT4s and 8 DFFs and a local programmable
         crossbar for intra-CLB routing; 24-track routing channel with
         L1 tracks; Capable of implementing 16 out of 30 ISCAS'89
         circuits.
    -   Executable CI Script: [mpw6_prga_tile_clb](../scripts/mpw6_prga_tile_clb)

-   `mpw5_raster_engine`
    -   Project Name: Raster_engine
    -   Project Owner: Mehmet Fatih Gülakar
    -   Project Number: [766](https://platform.efabless.com/projects/766)
    -   Description: An implementation of a rasterization engine using
         Skywater 130 nm PDK.
    -   Executable CI Script: [mpw5_raster_engine](../scripts/mpw5_raster_engine)

-   `multi_encoder`
    -   Project Name: Caravel_Multi_encoder
    -   Project Owner: Manikandan Nagarajan
    -   Project Number: [128](https://platform.efabless.com/projects/128)
    -   Description: This work is an integrated multi purpose encoder
         design which can simultaneously get two 32-bit data and a key
         of 32-bit size for generating 32-bit encoded data.
    -   Executable CI Script: [multi_encoder](../scripts/multi_encoder)

-   `NAND_Flash5`
    -   Project Name: NAND Flash MPW-5
    -   Project Owner: Brandon Ong
    -   Project Number: [690](https://platform.efabless.com/projects/690)
    -   Description: Small hand-drawn NAND flash array.
    -   Executable CI Script: [NAND_Flash5](../scripts/NAND_Flash5)

-   `peripheral_extender`
    -   Project Name: caravel_peripheral_extender
    -   Project Owner: Siva Prasad
    -   Project Number: [458](https://platform.efabless.com/projects/458)
    -   Description: An attempt to integrate various peripherals like
         I2C, I2S, UART, SPI, QSPI , JTAG, PWM, GPIO , WS281B led
         controller to the Caravel SoC via the wishbone bus. The user
         address space is exploited as the register space for this
         controller.
    -   Executable CI Script: [peripheral_extender](../scripts/peripheral_extender)

-   `picorF0`
    -   Project Name: picorF0
    -   Project Owner: Anish Singhani
    -   Project Number: [517](https://platform.efabless.com/projects/517)
    -   Description: picoRF0 - a multicycle CPU core running a
         simplified RISC ISA (used for teaching, normally on FPGAs).
         Connected to caravel for memory interfacing and I/O usage
    -   Executable CI Script: [picorF0](../scripts/picorF0)

-   `PSRAM_PRANG`
    -   Project Name: PSRAM Interface with PRNG
    -   Project Owner: Steven Goldsmith
    -   Project Number: [708](https://platform.efabless.com/projects/708)
    -   Description: HyperRAM interface by Steve Goldsmith with an ACORN
         PRNG by Zhenle Cao.
    -   Executable CI Script: [PSRAM_PRANG](../scripts/PSRAM_PRANG)

-   `PWM-Generator`
    -   Project Name: PWM_Test
    -   Project Owner: Karthi Keyan
    -   Project Number: [503](https://platform.efabless.com/projects/503)
    -   Description: NIL
    -   Executable CI Script: [PWM-Generator](../scripts/PWM-Generator)

-   `pwm_openmpw`
    -   Project Name: PWM
    -   Project Owner: Serdar Ünal
    -   Project Number: [727](https://platform.efabless.com/projects/727)
    -   Description: PWM (Pulse Width Modulation) module
    -   Executable CI Script: [pwm_openmpw](../scripts/pwm_openmpw)

-   `qf100`
    -   Project Name: qf105
    -   Project Owner: Serge Bazanski
    -   Project Number: [760](https://platform.efabless.com/projects/760)
    -   Description: This is a simple, microcontroller-style SoC based
         around a Lanai core. Lanai is a ~mysterious~ RISC core that
         happens to have an LLVM target, and to which I've successfully
         ported rustc (to be upstreamed). The core implementation is
         quite spartan: 3-stage, in-order. Currently targeting a 50MHz
         fclk.
    -   Executable CI Script:
         [qf_mkLanaiCPU](../scripts/qf_mkLanaiCPU) |
         [qf_mkLanaiFrontend](../scripts/qf_mkLanaiFrontend) |
         [qf_mkQF100Fabric](../scripts/qf_mkQF100Fabric) |
         [qf_mkQF100GPIO](../scripts/qf_mkQF100GPIO) |
         [qf_mkQF100KSC](../scripts/qf_mkQF100KSC) |
         [qf_mkQF100SPI](../scripts/qf_mkQF100SPI) |
         [qf_wrapper](../scripts/qf_wrapper)

-   `RAD_HARD_ALU`
    -   Project Name: ASIC Design of Fault Tolernt 16-Bit ALU
    -   Project Owner: Uzair Ahmad
    -   Project Number: [636](https://platform.efabless.com/projects/636)
    -   Description: This project is the ASIC design of a 16-bit
         fault-tolerant ALU. As errors are very costly in
         mission-critical applications. The proposed ALU is implemented
         for space application by using the concept of hardware
         redundancy (TMR) with high fault-masking ratio (FMR) voter
         logic to tolerate the impacts of single event upset generated
         by radiation etc. and assure reliable functionality.
    -   Executable CI Script: [RAD_HARD_ALU](../scripts/RAD_HARD_ALU)

-   `randsack`
    -   Project Name: Randsack
    -   Project Owner: Harrison Pham
    -   Project Number: [451](https://platform.efabless.com/projects/451)
    -   Description: Random number generators and PUFs. Also a few
         simple peripherals to output the random values (PWM, etc).
    -   Executable CI Script: [collapsering_macro](../scripts/collapsering_macro) |
         [digitalcore_macro](../scripts/digitalcore_macro) |
         [ringosc_macro](../scripts/ringosc_macro)

-   `riscduino`
    -   Project Name: riscduino-SCore(S2)
    -   Project Owner: Dinesh Annaya
    -   Project Number: [670](https://platform.efabless.com/projects/670)
    -   Description: A arduino pin compatible Single RISCV 32 Bit core
         Project
    -   Executable CI Script: [rd_yifive](../scripts/rd_yifive)

-   `riscduino_dcore`
    -   Project Name: riscduino-DCore
    -   Project Owner: Dinesh Annaya
    -   Project Number: [838](https://platform.efabless.com/projects/838)
    -   Description: Riscduino is a Dual 32 bit RISC V based SOC design
         pin compatible to arudino platform and this soc targeted for
         efabless Shuttle program.
    -   Executable CI Script: [rdd_ycr2_iconnect](../scripts/rdd_ycr2_iconnect)

-   `riscduino_qcore`
    -   Project Name: Riscduino-QCore
    -   Project Owner: Dinesh Annaya
    -   Project Number: [839](https://platform.efabless.com/projects/839)
    -   Description: Riscduino is a Dual 32 bit RISC V based SOC design
         pin compatible to arudino platform and this soc targeted for
         efabless Shuttle program.
    -   Executable CI Script: [rdq_uart_i2c_usb_spi_top](../scripts/rdq_uart_i2c_usb_spi_top) |
         [rdq_qspim_top](../scripts/rdq_qspim_top) |
         [rdq_pinmux](../scripts/rdq_pinmux) |
         [rdq_ycr4_iconnect](../scripts/rdq_ycr4_iconnect) |
         [rdq_ycr_core_top](../scripts/rdq_ycr_core_top) |
         [rdq_ycr_intf](../scripts/rdq_ycr_intf) 

-   `rng_chaos`
    -   Project Name: RNG CHAOS
    -   Project Owner: Onur Karataş
    -   Project Number: [793](https://platform.efabless.com/projects/793)
    -   Description: In this study, a digital RNG based on chaotic
         oscillators was implemented using the SKY130 process node.
    -   Executable CI Script: [rng_chaos](../scripts/rng_chaos)

-   `rotfpga`
    -   Project Name: ROTFPGA
    -   Project Owner: Tamas Hubai
    -   Project Number: [522](https://platform.efabless.com/projects/522)
    -   Description: A reconfigurable logic circuit made of identical
         rotatable copies of the tile shown above containing a NAND
         gate, a D flip-flop and a buffer.
    -   Executable CI Script: [rotfpga](../scripts/rotfpga)

-   `secure-memory`
    -   Project Name: Pseudo-Secure Memory
    -   Project Owner: Sukru Uzun
    -   Project Number: [800](https://platform.efabless.com/projects/800)
    -   Description: Keeping your data secure. This project aims to
         secure data from adversaries. It has inherent SRAM to keep the
         data safe and they are kept as not plaintext but ciphered.
    -   Executable CI Script: [secure-memory-proj](../scripts/secure-memory-proj) |
         [trng_wb_wrapper](../scripts/trng_wb_wrapper) |
         [secure-memory-wrapper](../scripts/secure-memory-wrapper)

-   `SHA1_engine`
    -   Project Name: SHA1_engine
    -   Project Owner: Konrad Rzeszutek Wilk
    -   Project Number: [151](https://platform.efabless.com/projects/151)
    -   Description: The SHA1 engine, while not the most secure
         nowadays, is still used by git commits and TPM PCR values. It
         has the implementation of RFC3174 using Method 1 along with a
         WishBone implementation to slurp up 512 bits and then in 160
         cycles provide the digest values.
    -   Executable CI Script: [SHA1_engine](../scripts/SHA1_engine)

-   soc_io_expander
    -   Project Name: io_expander
    -   Project Owner: Siva Prasad
    -   Project Number: [147](https://platform.efabless.com/projects/147)
    -   Description: A gpio expander for the caravel harness to realize
         a small microcontroller
    -   Executable CI Script: [soc_io_expander](../scripts/soc_io_expander)

-   `soric_project`
    -   Project Name: SORIC
    -   Project Owner: Thinh Pham
    -   Project Number: [635](https://platform.efabless.com/projects/635)
    -   Description: A SoC with two crypto-supported RISC-V cores.
    -   Executable CI Script: [crypto_core](../scripts/crypto_core) |
         [flexbex_core](../scripts/flexbex_core) |
         [soric_soc](../scripts/soric_soc)

-   `space_controller`
    -   Project Name: Space Controller
    -   Project Owner: Iván Rodríguez Ferrández
    -   Project Number: [583](https://platform.efabless.com/projects/583)
    -   Description: This design is a radiation tolerant UART server
         that can be used for low level control of multiple
         input/output ports during a radiation testing campaign. The
         system features triple redundancy in order to ensure that the
         commands are properly executed.
    -   Executable CI Script: [space_controller](../scripts/space_controller)

-   `sram_test`
    -   Project Name: Caravel SRAM Test
    -   Project Owner: mtomlinson
    -   Project Number: [496](https://platform.efabless.com/projects/496)
    -   Description: The project instantiates an SRAM block in the user
         project area for testing.
    -   Executable CI Script: [sram_test](../scripts/sram_test)

-   `subservient`
    -   Project Name: Subservient
    -   Project Owner: Klas Nordmark
    -   Project Number: [104](https://platform.efabless.com/projects/104)
    -   Description: This project consists of an ASIC-adapted version of
         the award-winning bit-serial RISC-V processor SERV.
    -   Executable CI Script: [subservient](../scripts/subservient)

-   `subservient_SOC`
    -   Project Name: Subservient_SOC
    -   Project Owner: Priyanka Dutta
    -   Project Number: [166](https://platform.efabless.com/projects/166)
    -   Description: SERV is a bit-serial CPU which means that the
         internal datapath is one bit wide and it is the world's
         smallest CPU. Subservient SOC consists of multiple SERV
         modules each connected with openram memory
    -   Executable CI Script: [subservient_SOC](../scripts/subservient_SOC)

-   `sudoku-accelerator`
    -   Project Name: Sudoku Accelerator
    -   Project Owner: Andrea Nall
    -   Project Number: [428](https://platform.efabless.com/projects/428)
    -   Description: Sudoku accelerator module that is capable of
         running an 'only candidate' pass in 23 cycles and a 'naked
         singles' pass in 108 cycles.
    -   Executable CI Script: [sudoku-accelerator](../scripts/sudoku-accelerator)

-   `systolic_array`
    -   Project Name: Systolic_array
    -   Project Owner: Veerendra S Devaraddi
    -   Project Number: [784](https://platform.efabless.com/projects/784)
    -   Description: Each node is a Processing ELement (PE) which takes
         in 3 inputs and produces an output. Each PE shifts the data
         horizontally and vertically to the neighboring PEs every clock
         cycle. Systolic arrays access the memory only once, and all
         the PEs transfer the data to the nearby PEs, thus reducing the
         memory access.
    -   Executable CI Script: [systolic_array](../scripts/systolic_array)

-   `treepram`
    -   Project Name: TreePRAM
    -   Project Owner: Tamas Hubai
    -   Project Number: [449](https://platform.efabless.com/projects/449)
    -   Description: Implements a version of the parallel random-access
         machine used in theoretical computer science courses with a
         memory sharing model based on a binary tree of processor
         cores.
    -   Executable CI Script: [treepram](../scripts/treepram)

-   `UETRV_Ecore`
    -   Project Name: UETRV-ECore
    -   Project Owner: Muhammad Tahir
    -   Project Number: [776](https://platform.efabless.com/projects/776)
    -   Description: The project is aimed at multi-axis motion control
         sub-system development. It integrates a RISC V 32I processor
         with a motor control module and is a complete SoC. The
         processor can boot from external flash (SPI interface) and
         supports vectored interrupts.
    -   Executable CI Script: [UETRV_Core](../scripts/UETRV_Core) |
         [UETRV_Motor_Top](../scripts/UETRV_Motor_Top) |
         [UETRV_Wishbone_InterConnect](../scripts/UETRV_Wishbone_InterConnect)

-   `updown_caravel`
    -   Project Name: Updown Counter (Test)
    -   Project Owner: PRANAV LULU
    -   Project Number: [614](https://platform.efabless.com/projects/614)
    -   Description: A simple Updown counter for demo purpose
    -   Executable CI Script: [updown_caravel](../scripts/updown_caravel)

-   `vsdbabysoc`
    -   Project Name: VSDBabySoC
    -   Project Owner: Mufutau Akuruyejo
    -   Project Number: [519](https://platform.efabless.com/projects/519)
    -   Description: VSDBabySoC is a small SoC including PLL, DAC, and a
         RISCV-based processor named RVMYTH.
    -   Executable CI Script: [vsdbabysoc](../scripts/vsdbabysoc) |
         [vsdbabysoc_wrapper](../scripts/vsdbabysoc_wrapper)

-   `vsdmemsoc`
    -   Project Name: VSDMemSoC
    -   Project Owner: Mufutau Akuruyejo
    -   Project Number: [483](https://platform.efabless.com/projects/483)
    -   Description: VSDMemSoC is a small SoC including a RISCV-based
         processor named RVMYTH and an external 1kB SRAM Instruction
         Memory (IMem) to separate the processor core and the IMem.
    -   Executable CI Script: [rvmyth_core](../scripts/rvmyth_core)

-   `wishbone_CAN`
    -   Project Name: wishbone_CAN
    -   Project Owner: Zachary Ellis
    -   Project Number: [153](https://platform.efabless.com/projects/153)
    -   Description: An implementation of a CAN bus controller as a
         wishbone peripheral for the open MPW shuttle
    -   Executable CI Script: [wishbone_CAN](../scripts/wishbone_CAN)

-   `yifive_a2`
    -   Project Name: yifive_a2
    -   Project Owner: Manikantasai2
    -   Project Number: [558](https://platform.efabless.com/projects/558)
    -   Description: YiFive is a 32 bit RISC V based SOC design targeted
         for efabless Shuttle program. This project uses only open
         source tool set for simulation,synthesis and backend tools.
    -   Executable CI Script: [clk_buf](../scripts/clk_buf) |
         [clk_skew_adjust](../scripts/clk_skew_adjust) |
         [glbl_cfg](../scripts/glbl_cfg) |
         [sdram](../scripts/sdram) |
         [spi_master](../scripts/spi_master) |
         [syntacore](../scripts/syntacore) |
         [uart_i2cm_usb](../scripts/uart_i2cm_usb)

-   `yonga-100m-ethernet`
    -   Project Name: YONGA-100M Ethernet
    -   Project Owner: Abdullah YILDIZ
    -   Project Number: [436](https://platform.efabless.com/projects/436)
    -   Description: YONGA-100M Ethernet is based on the implementation
         of Alex Forencich's 100Mbps Ethernet design.
    -   Executable CI Script: [yonga-100m-ethernet](../scripts/yonga-100m-ethernet)

-   yonga-lz4-decoder
    -   Project Name: YONGA-LZ4 Decoder
    -   Project Owner: Abdullah YILDIZ
    -   Project Number: [162](https://platform.efabless.com/projects/162)
    -   Description: YONGA-LZ4 Decoder is an implementation of the
         decoder of the popular LZ4 compression algorithm.
    -   Executable CI Script:  [yonga-lz4-decoder](../scripts/yonga-lz4-decoder)

-   `yonga-serv-accelerator`
    -   Project Name: YONGA-SERV Accelerator
    -   Project Owner: Abdullah YILDIZ
    -   Project Number: [434](https://platform.efabless.com/projects/434)
    -   Description: YONGA-SERV Accelerator includes the award-winning
         SERV RISC-V processor with a matrix multiplication
         accelerator.
    -   Executable CI Script: [yonga-serv-accelerator](../scripts/yonga-serv-accelerator)
