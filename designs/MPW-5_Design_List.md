# Design Descriptions

This file consists of the Efabless
[MPW-5](https://platform.efabless.com/projects/shuttle_name/MPW-5)
shuttle digital design list currently in the CI.

# MPW-5 Shuttle

-   riscduino

    -   Project Name: riscduino-SCore(S2)

    -   Project Owner: Dinesh Annaya

    -   Project Number:
         [670](https://platform.efabless.com/projects/670)

    -   Description: A arduino pin compatible Single RISCV 32 Bit core
         Project

    -   Executable CI Script: [rd_yifive](../scripts/rd_yifive)

-   mpw5_L1cache

    -   Project Name: mpw5_cache

    -   Project Owner: Shivani Shah

    -   Project Number:
         [673](https://platform.efabless.com/projects/673)

    -   Description: Integrated a smaller version of the 4-way set
         associative 256B L1 cache as user project area in caravel SoC.

    -   Executable CI Script: [mpw5_L1cache](../scripts/mpw5_L1cache)

-   NAND_Flash5

    -   Project Name: NAND Flash MPW-5

    -   Project Owner: Brandon Ong

    -   Project Number:
         [690](https://platform.efabless.com/projects/690)

    -   Description: Small hand-drawn NAND flash array.

    -   Executable CI Script: [NAND_Flash5](../scripts/NAND_Flash5)

-   PSRAM_PRANG

    -   Project Name: PSRAM Interface with PRNG

    -   Project Owner: Steven Goldsmith

    -   Project Number:
         [708](https://platform.efabless.com/projects/708)

    -   Description: HyperRAM interface by Steve Goldsmith with an ACORN
         PRNG by Zhenle Cao.

    -   Executable CI Script: [PSRAM_PRANG](../scripts/PSRAM_PRANG)

-   riscduino_dcore

    -   Project Name: riscduino-DCore

    -   Project Owner: Dinesh Annaya

    -   Project Number:
         [718](https://platform.efabless.com/projects/718)

    -   Description: Riscduino is a Dual 32 bit RISC V based SOC design
         pin compatible to arudino platform and this soc targeted for
         efabless Shuttle program.

    -   Executable CI Script:
         [rdd_ycr2_iconnect](../scripts/rdd_ycr2_iconnect)

-   pwm_openmpw

    -   Project Name: PWM

    -   Project Owner: Serdar Ünal

    -   Project Number:
         [727](https://platform.efabless.com/projects/727)

    -   Description: PWM (Pulse Width Modulation) module

    -   Executable CI Script: [pwm_openmpw](../scripts/pwm_openmpw)

-   counter_TestSOC

    -   Project Name: Test project

    -   Project Owner: Andrej Čižmárik

    -   Project Number:
         [733](https://platform.efabless.com/projects/733)

    -   Description: Test project

    -   Executable CI Script:
         [counter_TestSOC](../scripts/counter_TestSOC)

-   IIC_AudioDAC

    -   Project Name: delta-sigma audio DAC

    -   Project Owner: Harald Pretl

    -   Project Number:
         [736](https://platform.efabless.com/projects/736)

    -   Description: As a classroom project at Johannes Kepler
         University, we are designing a delta-sigma audio DAC, with a
         maximized digital and minimized analog content. The
         specifications are 16b, 48kHz sample rate with direct drive of
         line-out or headphones (load impedance 16 to 600Ohm). The
         design supports 1st or 2nd-order delta-sigma, volume control,
         and a FIFO asynchronous interface to a host system.

    -   Executable CI Script: [IIC_AudioDAC](../scripts/IIC_AudioDAC)

-   mpw5_prga

    -   Project Name: ORDER_PRGA

    -   Project Owner: Georgios T

    -   Project Number:
         [742](https://platform.efabless.com/projects/742)

    -   Description: A 512-LUT4 FPGA generated using PRGA (Princeton
         Reconfigurable Gate Array); An 8x8 array of CLBs, each
         containing 8 LUT4s and 8 DFFs and a local programmable
         crossbar for intra-CLB routing; 24-track routing channel with
         L1 tracks; Capable of implementing 16 out of 30 ISCAS'89
         circuits.

    -   Executable CI Script:
         [mpw5_prga_tile_clb](../scripts/mpw5_prga_tile_clb)

-   ChirstmasTreeController

    -   Project Name: ChristmasTreeController

    -   Project Owner: Julien OURY

    -   Project Number:
         [746](https://platform.efabless.com/projects/746)

    -   Description: A Christmas tree controller that include : Infrared
         receiver (protocol NEC), StepMotor controller (full-step,
         half-step, with strenght control), Led string controller
         (compatibles WS2812B), Pseudo-random generator (32bits)

    -   Executable CI Script:
         [ChirstmasTreeController](../scripts/ChirstmasTreeController)

-   counter_mpw4_mv

    -   Project Name: Zero to ASIC MPW4 rerun on MPW5

    -   Project Owner: Matt Venn

    -   Project Number:
         [753](https://platform.efabless.com/projects/753)

    -   Description: Zero to ASIC MPW4 rerun on MPW5

    -   Executable CI Script:
         [counter_mpw4_mv](../scripts/counter_mpw4_mv)

-   azadi_soc_iii

    -   Project Name: Azadi_III

    -   Project Owner: Rameen Anwar

    -   Project Number:
         [755](https://platform.efabless.com/projects/755)

    -   Description: The Azadi-III includes the following peripherals.
         PWM 2-Channel, OpenRAM 1KB x 4 for ICCM 1KB x 4 for DCCM Ibex
         core(named as brq_core) FPU (single-precision) TileLink (UL)
         UART QSPI SPI GPIOs Design Goals: Azadi-III is aimed to extend
         the base ibex core(RV32IMC) with a fully functional single
         precision floating point unit and RISCV compliant debug module
         for on chip debugging and some standard peripherals for
         communicating with other devices.

    -   Executable CI Script:
         [azadi_soc_iii](../scripts/azadi_soc_iii)

-   marmot_asic

    -   Project Name: Power Monitoring Microcontroller ASIC MARMOT

    -   Project Owner: Shumpei Kawasaki

    -   Project Number:
         [759](https://platform.efabless.com/projects/759)

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

-   qf100

    -   Project Name: qf105

    -   Project Owner: Serge Bazanski

    -   Project Number:
         [760](https://platform.efabless.com/projects/760)

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
         [qf_mkQF100KSC](../scripts/qf_mkQF100KSC) | [
         qf_mkQF100SPI](../scripts/ qf_mkQF100SPI) |
         [qf_wrapper](../scripts/qf_wrapper)

-   mpw-5c-C0

    -   Project Name: kasirga-c0-mpw-5

    -   Project Owner: Yahya Can Tuğrul

    -   Project Number:
         [761](https://platform.efabless.com/projects/761)

    -   Description: RISC-V SoC

    -   Executable CI Script: [mpw-5c-C0](../scripts/mpw-5c-C0)

-   alu_xor

    -   Project Name: ALU

    -   Project Owner: Janani Aravind

    -   Project Number:
         [763](https://platform.efabless.com/projects/763)

    -   Description: The ALU_XOR design implemented uses two copies of
         ALUs, one being the golden reference, and compares the output
         for any differences. This project aims to analyze the faults
         injected in real-time to identify the location/bits that have
         any impacts.

    -   Executable CI Script: [alu_xor](../scripts/alu_xor) |
         [alu_xor_wrapper](../scripts/alu_xor_wrapper)

-   Actuator_Controller

    -   Project Name: ActuatorController

    -   Project Owner: Josh Stevens

    -   Project Number:
         [765](https://platform.efabless.com/projects/765)

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

-   mpw5_raster_engine

    -   Project Name: Raster_engine

    -   Project Owner: Mehmet Fatih Gülakar

    -   Project Number:
         [766](https://platform.efabless.com/projects/766)

    -   Description: An implementation of a rasterization engine using
         Skywater 130 nm PDK.

    -   Executable CI Script:
         [mpw5_raster_engine](../scripts/mpw5_raster_engine)

-   mpw5_open_eFPGA

    -   Project Name: FABulous_eFPGA

    -   Project Owner: Nguyen Dao

    -   Project Number:
         [769](https://platform.efabless.com/projects/769)

    -   Description: Demonstration of the open FABulous eFPGA using the
         OpenLane flow.

    -   Executable CI Script:
         [mpw5_open_eFPGA](../scripts/mpw5_open_eFPGA)

-   logic_bist

    -   Project Name: LBIST-MBIST

    -   Project Owner: Dinesh Annaya

    -   Project Number:
         [771](https://platform.efabless.com/projects/771)

    -   Description: Logic built-in self-test (or LBIST) is a form of
         built-in self-test (BIST) in which hardware and/or software is
         built into integrated circuits allowing them to test their own
         operation.

    -   Executable CI Script:
         [LBIST_mbist_top1](../scripts/LBIST_mbist_top1) |
         [LBIST_mbist_top2](../scripts/LBIST_mbist_top2)

-   UETRV_Ecore

    -   Project Name: UETRV-ECore

    -   Project Owner: Muhammad Tahir

    -   Project Number:
         [776](https://platform.efabless.com/projects/776)

    -   Description: The project is aimed at multi-axis motion control
         sub-system development. It integrates a RISC V 32I processor
         with a motor control module and is a complete SoC. The
         processor can boot from external flash (SPI interface) and
         supports vectored interrupts.

    -   Executable CI Script: [UETRV_Core](../scripts/UETRV_Core) |
         [UETRV_Motor_Top](../scripts/UETRV_Motor_Top) |
         [UETRV_Wishbone_InterConnect](../scripts/UETRV_Wishbone_InterConnect)

-   systolic_array

    -   Project Name: Systolic_array

    -   Project Owner: Veerendra S Devaraddi

    -   Project Number:
         [784](https://platform.efabless.com/projects/784)

    -   Description: Each node is a Processing ELement (PE) which takes
         in 3 inputs and produces an output. Each PE shifts the data
         horizontally and vertically to the neighboring PEs every clock
         cycle. Systolic arrays access the memory only once, and all
         the PEs transfer the data to the nearby PEs, thus reducing the
         memory access.

    -   Executable CI Script:
         [systolic_array](../scripts/systolic_array)

-   asicle

    -   Project Name: Asicle

    -   Project Owner: Tamas Hubai

    -   Project Number:
         [788](https://platform.efabless.com/projects/788)

    -   Description: Okay, so Wordle took the net by storm and was
         ported to a myriad of platforms including retro computers and
         microcontrollers with tight constraints. But have you played
         it on raw silicon yet?

    -   Executable CI Script: [asicle](../scripts/asicle)

-   mpw5_4ft4

    -   Project Name: 4ft4

    -   Project Owner: Andrew Foote

    -   Project Number:
         [790](https://platform.efabless.com/projects/790)

    -   Description: an MCS-4 clone (4004, 4001, 4002)

    -   Executable CI Script: [mpw5_4ft4](../scripts/mpw5_4ft4)

-   hack_soc_wrapper

    -   Project Name: Hack SoC

    -   Project Owner: Maximo Balestrini

    -   Project Number:
         [791](https://platform.efabless.com/projects/791)

    -   Description: Hardware implementation of the Hack Computer from
         the Nand to Tetris courses

    -   Executable CI Script:
         [hack_soc_wrapper](../scripts/hack_soc_wrapper)

-   rng_chaos

    -   Project Name: RNG CHAOS

    -   Project Owner: Onur Karataş

    -   Project Number:
         [793](https://platform.efabless.com/projects/793)

    -   Description: In this study, a digital RNG based on chaotic
         oscillators was implemented using the SKY130 process node.

    -   Executable CI Script: [rng_chaos](../scripts/rng_chaos)

-   FMAC

    -   Project Name: Factored MAC for Systolic Array Architectures

    -   Project Owner: KASHIF INAYAT

    -   Project Number:
         [794](https://platform.efabless.com/projects/794)

    -   Description: This is a factored MAC, in which we have designed
         the factored Radix-8 Booth Multiplier (16 bits) and
         accumulation is performed with 32 bits carry propagation adder
         (CPA). A radix-8 booth multiplier involves the dedicated
         pre-processing of complex booth recording on multiplier X and
         3y=Y+2Y generation on the multiplicand Y.

    -   Executable CI Script: [FMAC](../scripts/FMAC) |
         [FMAC_wrapper](../scripts/FMAC_wrapper)

-   mpw5_microwatt

    -   Project Name: Microwatt MPW5

    -   Project Owner: Anton Blanchard

    -   Project Number: [795](https://platform.efabless.com/projects/)

    -   Description: Microwatt is a 64 bit OpenPOWER core written in
         VHDL. It includes an IEEE 754 double-precision binary
         floating-point unit as well as supervisor support that allows
         it to run Linux. There are hard macros for the 2 multipliers
         (integer and floating point), the 2 cache RAMs (icache and
         dcache) and the 4kB main RAM.

    -   Executable CI Script:
         [Microwatt_FP_DFFRFile](../scripts/Microwatt_FP_DFFRFile) |
         [Microwatt_multiply_add](../scripts/Microwatt_multiply_add)

-   GPS_Baseband

    -   Project Name: PICO Design Resubmission MPW5

    -   Project Owner: Ramakrishna P.V.

    -   Project Number:
         [796](https://platform.efabless.com/projects/796)

    -   Description: This project includes two different designs
         submitted as part of SSCS PICO-2021. The two designs are GPS
         Baseband Engine, Polysilicon Resistor based Temperature
         sensor.

    -   Executable CI Script: [GPS_Baseband](../scripts/GPS_Baseband)

-   counter_REST

    -   Project Name: REST_II

    -   Project Owner: Sajjad Ahmed

    -   Project Number:
         [798](https://platform.efabless.com/projects/798)

    -   Description: REST(Resource efficient SRAM based TCAM) is a test
         project for experimenting with SRAM based TCAMs in ASIC.

    -   Executable CI Script: [counter_REST](../scripts/counter_REST)

-   secure-memory

    -   Project Name: Pseudo-Secure Memory

    -   Project Owner: Sukru Uzun

    -   Project Number:
         [800](https://platform.efabless.com/projects/800)

    -   Description: Keeping your data secure. This project aims to
         secure data from adversaries. It has inherent SRAM to keep the
         data safe and they are kept as not plaintext but ciphered.

    -   Executable CI Script:
         [secure-memory-proj](../scripts/secure-memory-proj) |
         [trng_wb_wrapper](../scripts/trng_wb_wrapper) |
         [secure-memory-wrapper](../scripts/secure-memory-wrapper)

-   async_fib2

    -   Project Name: Asynchronous Fibonacci counter

    -   Project Owner: Gal Nadrag

    -   Project Number:
         [808](https://platform.efabless.com/projects/808)

    -   Description: The counter uses two phase dual rail logic. An
         asynchronous sequential logic circuit does not rely on the
         assumption that logic values only need to be valid within a
         window around the clock edge. Instead, the circuit needs to be
         valid all the time.

    -   Executable CI Script: [async_fib2](../scripts/async_fib2)
