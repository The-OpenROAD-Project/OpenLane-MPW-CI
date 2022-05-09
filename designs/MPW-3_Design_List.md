# Design Descriptions

This file consists of the Efabless
[MPW-3](https://platform.efabless.com/projects/shuttle_name/MPW-3)
shuttle digital design list currently in the CI.

# MPW-3 Shuttle

-   `GpioCtrl`
    -   Project Name: ToolTest gpioCtrl
    -   Project Owner: Sebastian Wiebking
    -   Project Number: [382](https://platform.efabless.com/projects/382)
    -   Description: Digital test design with simple GPIO control for
         toolchain testing
    -   Executable CI Script: [GpioCtr](../scripts/ GpioCtrl)

-   `counter_rgb`
    -   Project Name: Zero to ASIC group submission MPW3
    -   Project Owner: Matt Venn
    -   Project Number: [392](https://platform.efabless.com/projects/392)
    -   Description: MPW3 submission
    -   Executable CI Script: [counter_rgb](../scripts/counter_rgb)

-   `jacaranda8`
    -   Project Name: caravel_jacaranda-8
    -   Project Owner: Yuki Azuma
    -   Project Number: [413](https://platform.efabless.com/projects/413)
    -   Description: Jacaranda-8 is educational ISA for home-build CPU
         beginners. This project implements the microarchitecture:
         CHARLATAN which is a simple implementation of Jacaranda-8 ISA.
    -   Executable CI Script: [jacaranda8](../scripts/jacaranda8)

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
         [wb_interconnect](../scripts../wb_interconnect)

-   `counter_vsdsram`
    -   Project Name: VSD SRAM
    -   Project Owner: Shon Taware
    -   Project Number: [424](https://platform.efabless.com/projects/424)
    -   Description: Aims at design of a SRAM cell array with a
         configuration of 1.8 V operating voltage and access time less
         than 2.5ns using Google SkyWater SKY130 PDKs and OpenRAM
         memory compiler.
    -   Executable CI Script: [counter_vsdsram](../scripts/counter_vsdsram)

-   `counter_efab`
    -   Project Name: Efabless processor
    -   Project Owner: Andrew Feldman
    -   Project Number: [427](https://platform.efabless.com/projects/427)
    -   Description: Basic design to familiarize with this service
    -   Executable CI Script: [counter_efab](../scripts/counter_efab)

-   `sudoku-accelerator`
    -   Project Name: Sudoku Accelerator
    -   Project Owner: Andrea Nall
    -   Project Number: [428](https://platform.efabless.com/projects/428)
    -   Description: Sudoku accelerator module that is capable of
         running an 'only candidate' pass in 23 cycles and a 'naked
         singles' pass in 108 cycles.
    -   Executable CI Script: [sudoku-accelerator](../scripts/sudoku-accelerator)

-   `yonga-serv-accelerator`
    -   Project Name: YONGA-SERV Accelerator
    -   Project Owner: Abdullah YILDIZ
    -   Project Number: [434](https://platform.efabless.com/projects/434)
    -   Description: YONGA-SERV Accelerator includes the award-winning
         SERV RISC-V processor with a matrix multiplication
         accelerator.
    -   Executable CI Script: [yonga-serv-accelerator](../scripts/yonga-serv-accelerator)

-   `yonga-100m-ethernet`
    -   Project Name: YONGA-100M Ethernet
    -   Project Owner: Abdullah YILDIZ
    -   Project Number: [436](https://platform.efabless.com/projects/436)
    -   Description: YONGA-100M Ethernet is based on the implementation
         of Alex Forencich's 100Mbps Ethernet design.
    -   Executable CI Script: [yonga-100m-ethernet](../scripts/yonga-100m-ethernet)

-   `treepram`
    -   Project Name: TreePRAM
    -   Project Owner: Tamas Hubai
    -   Project Number: [449](https://platform.efabless.com/projects/449)
    -   Description: Implements a version of the parallel random-access
         machine used in theoretical computer science courses with a
         memory sharing model based on a binary tree of processor
         cores.
    -   Executable CI Script: [treepram](../scripts/treepram)

-   `randsack`
    -   Project Name: Randsack
    -   Project Owner: Harrison Pham
    -   Project Number: [451](https://platform.efabless.com/projects/451)
    -   Description: Random number generators and PUFs. Also a few
         simple peripherals to output the random values (PWM, etc).
    -   Executable CI Script: [randsack](../scripts/randsack)

-   `Fixed2Float`
    -   Project Name: Fixed2Float_Converter
    -   Project Owner: Dhayalakumar Maruthamuthu
    -   Project Number: [455](https://platform.efabless.com/projects/455)
    -   Description: This project is implementation for conversion of
         19bit fixed point number to single precision IEEE floating
         point number.
    -   Executable CI Script: [Fixed2Float](../scripts/Fixed2Float)

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

-   `MPW3_Approximate_Multiplier`
    -   Project Name: Approximate Multiplier
    -   Project Owner: skandha deepsita
    -   Project Number: [460](https://platform.efabless.com/projects/460)
    -   Description: This project is an implementation of an approximate
         multiplier published in ACM TODAES journal 2021, titled
         "Energy Efficient Error Resilient Multiplier Using Low-power
         Compressors".
    -   Executable CI Script: [MPW3_Approximate_Multiplier](../scripts/MPW3_Approximate_Multiplier)

-   `vsdmemsoc`
    -   Project Name: VSDMemSoC
    -   Project Owner: Mufutau Akuruyejo
    -   Project Number: [483](https://platform.efabless.com/projects/483)
    -   Description: VSDMemSoC is a small SoC including a RISCV-based
         processor named RVMYTH and an external 1kB SRAM Instruction
         Memory (IMem) to separate the processor core and the IMem.
    -   Executable CI Script: [rvmyth_core](../scripts/rvmyth_core)

-   `FCNet_prj`
    -   Project Name: pre-trained neural network for MNIST
    -   Project Owner: mxiangyue
    -   Project Number: [486](https://platform.efabless.com/projects/486)
    -   Description: This project implements a pre-trained neural
         network for hand-written digits from MNIST dataset.
    -   Executable CI Script: [FCNet_prj](../scripts/FCNet_prj)

-   `sram_test`
    -   Project Name: Caravel SRAM Test
    -   Project Owner: mtomlinson
    -   Project Number: [496](https://platform.efabless.com/projects/496)
    -   Description: The project instantiates an SRAM block in the user
         project area for testing.
    -   Executable CI Script: [sram_test](../scripts/sram_test)

-   `PWM-Generator`
    -   Project Name: PWM_Test
    -   Project Owner: Karthi Keyan
    -   Project Number: [503](https://platform.efabless.com/projects/503)
    -   Description: NIL
    -   Executable CI Script: [PWM-Generator](../scripts/PWM-Generator)

-   `keyvalue_caravel`
    -   Project Name: Key Value store
    -   Project Owner: Giray Pultar
    -   Project Number: [509](https://platform.efabless.com/projects/509)
    -   Description: A key value store using a wishbone interface,
         developed using migen.
    -   Executable CI Script: [keyvalue_caravel](../scripts/keyvalue_caravel)

-   `counter_hhj`
    -   Project Name: Caravel
    -   Project Owner: Lena Hwang
    -   Project Number: [515](https://platform.efabless.com/projects/515)
    -   Description: A template SoC for Google sponsored Open MPW
         shuttles for SKY130
    -   Executable CI Script: [counter_hhj](../scripts/counter_hhj)

-   `picorF0`
    -   Project Name: picorF0
    -   Project Owner: Anish Singhani
    -   Project Number: [517](https://platform.efabless.com/projects/517)
    -   Description: picoRF0 - a multicycle CPU core running a
         simplified RISC ISA (used for teaching, normally on FPGAs).
         Connected to caravel for memory interfacing and I/O usage
    -   Executable CI Script: [picorF0](../scripts/picorF0)

-   `vsdbabysoc`
    -   Project Name: VSDBabySoC
    -   Project Owner: Mufutau Akuruyejo
    -   Project Number: [519](https://platform.efabless.com/projects/519)
    -   Description: VSDBabySoC is a small SoC including PLL, DAC, and a
         RISCV-based processor named RVMYTH.
    -   Executable CI Script: [vsdbabysoc](../scripts/vsdbaby_soc) |
         [vsdbabysoc_wrapper](../scripts/vsdbabysoc_wrapper)

-   `rotfpga`
    -   Project Name: ROTFPGA
    -   Project Owner: Tamas Hubai
    -   Project Number: [522](https://platform.efabless.com/projects/522)
    -   Description: A reconfigurable logic circuit made of identical
         rotatable copies of the tile shown above containing a NAND
         gate, a D flip-flop and a buffer.
    -   Executable CI Script: [rotfpga](../scripts/rotfpga)
