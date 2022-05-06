# Design Descriptions

This file consists of the Efabless
[MPW-2](https://platform.efabless.com/projects/shuttle_name/MPW-2)
shuttle digital design list currently in the CI.

# MPW-2 Shuttle

-   subservient

    -   Project Name: Subservient

    -   Project Owner: Klas Nordmark

    -   Project Number:
         [104](https://platform.efabless.com/projects/104)

    -   Description: This project consists of an ASIC-adapted version of
         the award-winning bit-serial RISC-V processor SERV.

    -   Executable CI Script: [subservient](../scripts/subservient)

-   FPU

    -   Project Name: Caravel_FPU

    -   Project Owner:Komal Javed

    -   Project Number:
         [109](https://platform.efabless.com/projects/109)

    -   Description: A floating-point unit (FPU), also referred to as
         numeric co-processor, is a dedicated processing unit that
         manipulates numbers more quickly than the basic microprocessor
         circuit.

    -   Executable CI Script: [FPU](../scripts/FPU)

-   counter_alperen

    -   Project Name: Alperens SOC

    -   Project Owner: Alperen Bolat

    -   Project Number:
         [114](https://platform.efabless.com/projects/114)

    -   Description: Custom Risc V processor design

    -   Executable CI Script:
         [counter_alperen](../scripts/counter_alperen)

-   counter_eeuet

    -   Project Name: Caravel-Sermo

    -   Project Owner: Tayyeb Mahmood

    -   Project Number:
         [116](https://platform.efabless.com/projects/116)

    -   Description: The project implements a PID controller using
         encoder feedback and single channel of PWM output and is
         capable of driving a DC motor. The module configuration and
         data registers are accessible through Wishbone slave
         interface.

    -   Executable CI Script:
         [counter_eeuet](../scripts/counter_eeuet)

-   multi_encoder

    -   Project Name: Caravel_Multi_encoder

    -   Project Owner: Manikandan Nagarajan

    -   Project Number:
         [128](https://platform.efabless.com/projects/128)

    -   Description: This work is an integrated multi purpose encoder
         design which can simultaneously get two 32-bit data and a key
         of 32-bit size for generating 32-bit encoded data.

    -   Executable CI Script:
         [multi_encoder](../scripts/multi_encoder)

-   fuserisc

    -   Project Name: FuseRISC

    -   Project Owner:

    -   Project Number:
         [134](https://platform.efabless.com/projects/134)

    -   Description:

    -   Executable CI Script: [core_sram](../scripts/core_sram) |
         [wb_mem_split](../scripts/wb_mem_split) |
         [eFPGA_CPU_TOP](../scripts/eFPGA_CPU_TOP)

-   soc_io_expander

    -   Project Name: io_expander

    -   Project Owner: Siva Prasad

    -   Project Number:
         [147]](https://platform.efabless.com/projects/147)

    -   Description: A gpio expander for the caravel harness to realize
         a small microcontroller

    -   Executable CI Script:
         [soc_io_expander](../scripts/soc_io_expander)

-   SHA1_engine

    -   Project Name: SHA1_engine

    -   Project Owner: Konrad Rzeszutek Wilk

    -   Project Number:
         [151](https://platform.efabless.com/projects/151)

    -   Description: The SHA1 engine, while not the most secure
         nowadays, is still used by git commits and TPM PCR values. It
         has the implementation of RFC3174 using Method 1 along with a
         WishBone implementation to slurp up 512 bits and then in 160
         cycles provide the digest values.

    -   Executable CI Script: [SHA1_engine](../scripts/SHA1_engine)

-   wishbone_CAN

    -   Project Name: wishbone_CAN

    -   Project Owner: Zachary Ellis

    -   Project Number:
         [153](https://platform.efabless.com/projects/153)

    -   Description: An implementation of a CAN bus controller as a
         wishbone peripheral for the open MPW shuttle

    -   Executable CI Script: [wishbone_CAN](../scripts/wishbone_CAN)

-   yonga-lz4-decoder

    -   Project Name: YONGA-LZ4 Decoder

    -   Project Owner: Abdullah YILDIZ

    -   Project Number:
         [162](https://platform.efabless.com/projects/162)

    -   Description: YONGA-LZ4 Decoder is an implementation of the
         decoder of the popular LZ4 compression algorithm.

    -   Executable CI Script:
         [yonga-lz4-decoder](../scripts/yonga-lz4-decoder)

-   subservient_SOC

    -   Project Name: Subservient_SOC

    -   Project Owner: Priyanka Dutta

    -   Project Number:
         [166](https://platform.efabless.com/projects/166)

    -   Description: SERV is a bit-serial CPU which means that the
         internal datapath is one bit wide and it is the world's
         smallest CPU. Subservient SOC consists of multiple SERV
         modules each connected with openram memory

    -   Executable CI Script:
         [subservient_SOC](../scripts/subservient_SOC)

-   axi_dma_wrapper

    -   Project Name: AXI DMA using Spinal HDL

    -   Project Owner: Pu Wang

    -   Project Number:
         [175](https://platform.efabless.com/projects/175)

    -   Description: This is a DMA controller with AMBA AXI4 interface.
         This DMA controller is part of an ongoing effort to build an
         SoC with the state-of-art open source hardware development
         kits, such as Spinal HDL and cocotb.

    -   Executable CI Script:
         [axi_dma_wrapper](../scripts/axi_dma_wrapper)

-   caravel_dsp

    -   Project Name: caravel_dsp2

    -   Project Owner: Jayakumar Janarthanam

    -   Project Number:
         [180](https://platform.efabless.com/projects/180)

    -   Description: DSP Functions

    -   Executable CI Script: [caravel_dsp[(../scripts/caravel_dsp)

-   eFPGA_v3_wrapper

    -   Project Name: FABulous_Sky

    -   Project Owner: Nguyen Dao

    -   Project Number:
         [202](https://platform.efabless.com/projects/202)

    -   Description: Demonstration of the Fabulous FPGA design flow
         using the Skywater 130 process. The design flow includes the
         specification of the routing fabric, individual tiles, and the
         exact fabric description.

    -   Executable CI Script:
         [eFPGA_v3_wrapper](../scripts/eFPGA_v3_wrapper)

-   space_controller

    -   Project Name: Space_Shuttle

    -   Project Owner: Ahmad Nofal

    -   Project Number:
         [214](https://platform.efabless.com/projects/214)

    -   Description: The main goal of this project is to assess the
         reliability of the SkyWater 130nm manufacturing process and
         Open Source PDK, as well as to evaluate different reliability
         mitigation techniques. Currently, the space industry relies on
         custom designs implemented with older mature manufacturing
         technologies such as 130nm or 65nm, which feature
         fault-tolerant and radiation hardening features.

    -   Executable CI Script:
         [space_controller](../scripts/space_controller)

-   azadi_soc

    -   Project Name: azadi_soc_ibex

    -   Project Owner: Zeeshan Rafique

    -   Project Number:
         [218](https://platform.efabless.com/projects/218)

    -   Description: Azadi is an SoC with a 32-bit RISC-V signal core
         extended version of ibex we named it "buraq", it is a 3-stage
         pipeline core that implements the RV32IMF instruction set
         architecture, a limited number of peripherals UART, SPI, GPIO,
         PWM, and timer.

    -   Executable CI Script: [azadi_soc](../scripts/azadi_soc)
