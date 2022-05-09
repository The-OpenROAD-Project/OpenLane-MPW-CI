# Design Descriptions

This file consists of the Efabless
[MPW-4](https://platform.efabless.com/projects/shuttle_name/MPW-4)
shuttle digital design list currently in the CI.

# MPW-4 Shuttle

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

-   `logic_bist`
    -   Project Name: Logic BIST
    -   Project Owner: Dinesh Annaya
    -   Project Number: [566](https://platform.efabless.com/projects/566)
    -   Description: Logic BIST with Scan Chain to detect struck at
         fault
    -   Executable CI Script: [logic_bist](../scripts/logic_bist)

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

-   `counter_display_mv`
    -   Project Name: Zero to ASIC course
    -   Project Owner: Matt Venn
    -   Project Number: [596](https://platform.efabless.com/projects/596)
    -   Description: Designs from the Zero to ASIC course
    -   Executable CI Script: [counter_display_mv](../scripts/counter_display_mv)

-   `junga_soc`
    -   Project Name: junga_soc_mpw4
    -   Project Owner: Lena Hwang
    -   Project Number: [611](https://platform.efabless.com/projects/611)
    -   Description: Simple vexriscv based SoC
    -   Executable CI Script: [junga_soc](../scripts/junga_soc)

-   `updown_caravel`
    -   Project Name: Updown Counter (Test)
    -   Project Owner: PRANAV LULU
    -   Project Number: [614](https://platform.efabless.com/projects/614)
    -   Description: A simple Updown counter for demo purpose
    -   Executable CI Script: [updown_caravel](../scripts/updown_caravel)

-   `counter_ICESOC`
    -   Project Name: ICESOC
    -   Project Owner: Nguyen Dao
    -   Project Number: [625](https://platform.efabless.com/projects/625)
    -   Description: Ibex Crypto eFPGA SoC
    -   Executable CI Script: [counter_ICESOC](../scripts/counter_ICESOC)

-   `soric_project`
    -   Project Name: SORIC
    -   Project Owner: Thinh Pham
    -   Project Number: [635](https://platform.efabless.com/projects/635)
    -   Description: A SoC with two crypto-supported RISC-V cores.
    -   Executable CI Script: [crypto_core](../scripts/crypto_core) |
         [flexbex_core](../scripts/flexbex_core) |
         [soric_soc](../scripts/soric_soc)

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

-   `kasirga_k0`
    -   Project Name: Kasirga K0
    -   Project Owner: İsmail Emir Yüksel
    -   Project Number: [638](https://platform.efabless.com/projects/638)
    -   Description: RISC-V SoC
    -   Executable CI Script: [c0_system_macro](../scripts/c0_system_macro)

-   `koggestone_adder`
    -   Project Name: caravel_koggestone_adder_project
    -   Project Owner: Mohammed Zakir Hussain
    -   Project Number: [640](https://platform.efabless.com/projects/640)
    -   Description: 16-bit kogge-stone adder Verilog implementation.
    -   In computing, the Kogge–Stone adder is a parallel prefix form
         carry look-ahead adder.
    -   Executable CI Script: [koggestone_adder](../scripts/koggestone_adder)

-   `subservient`
    -   Project Name: Subservient-MPW4
    -   Project Owner: Klas Nordmark
    -   Project Number: [641](https://platform.efabless.com/projects/641)
    -   Description: An ASIC-adapted version of the award-winning
         bit-serial RISC-V processo SERV, resubmitted due to expected
         issues with mpw2. Slightly modified to meet timing.
    -   Executable CI Script: [subservient](../scripts/subservient)

-   `keyvalue_caravel`
    -   Project Name: Key Value store
    -   Project Owner: Giray Pultar
    -   Project Number: [644](https://platform.efabless.com/projects/644)
    -   Description: A key value store using a wishbone interface,
         developed using migen.
    -   Executable CI Script: [keyvalue_caravel](../scripts/keyvalue_caravel)

-   `ks-guitar`
    -   Project Name: Karplus-Strong Guitar
    -   Project Owner: Tamas Hubai
    -   Project Number: [648](https://platform.efabless.com/projects/648)
    -   Description: Physically modeled guitar strings using the
         Karplus-Strong algorithm with some extensions by Jaffe &
         Smith.
    -   Executable CI Script: [ks-guitar](../scripts/ks-guitar)

-   `randsack`
    -   Project Name: Randsack B1
    -   Project Owner: Harrison Pham
    -   Project Number: [659](https://platform.efabless.com/projects/659)
    -   Description: Random number generators and PUFs. Includes fixes
         for compatibility with the new litex based management SoC.
    -   Executable CI Script:
         [collapsering_macro](../scripts/collapsering_macro) |
         [digitalcore_macro](../scripts/digitalcore_macro) |
         [ringosc_macro](../scripts/ringosc_macro)

-   `ks-guitar-2s`
    -   Project Name: Karplus-Strong Guitar (two-strings)
    -   Project Owner: Tamas Hubai
    -   Project Number: [660](https://platform.efabless.com/projects/660)
    -   Description: Two string version of Karplus-Strong Guitar
    -   Executable CI Script: [ks-guitar-2s](../scripts/ks-guitar-2s)

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
