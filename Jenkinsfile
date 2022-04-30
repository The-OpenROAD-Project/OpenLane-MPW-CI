pipeline {
    agent any;
    environment {
        ROUTING_CORES = 32;
    }
    stages {

        stage("Run Tests") {
            matrix {

                axes {
                    axis {
                        name "DESIGN";
                        values "Actuator_Controller AC_actuator_driver_controller",
                               "Actuator_Controller AC_cells_controller",
                               "Actuator_Controller AC_memory_controler",
                               "Actuator_Controller AC_spi_mod",
                               "Actuator_Controller AC_system_controler",
                               "Actuator_Controller AC_top",
                               "APPROX_MULT",
                               "axi_dma_wrapper",
                               "alu_xor",
                               "alu_xor alu_xor_wrapper",
                               "async_fib2",
                               "asicle",
                               //"azadi_soc", //Removed due to Jenkins OverLimit
                               //"azadi_soc_iii", //Removed due to Jenkins OverLimit
                               "ChirstmasTreeController",
                               "caravel_dsp",
                               //"counter_alperen", //Removed due to Jenkins OverLimit
                               //"counter_azadi", //Removed due to Jenkins OverLimit
                               //"counter_display_mv", //Removed due to Jenkins OverLimit
                               //"counter_eeuet", //Removed due to Jenkins OverLimit
                               //"counter_efab", //Removed due to Jenkins OverLimit
                               //"counter_hhj", //Removed due to Jenkins OverLimit
                               //"counter_ICESOC", //Removed due to Jenkins OverLimit
                               //"counter_mpw4_mv", //Removed due to Jenkins OverLimit
                               //"counter_REST", //Removed due to Jenkins OverLimit
                               //"counter_rgb", //Removed due to Jenkins OverLimit
                               //"counter_TestSOC", //Removed due to Jenkins OverLimit
                               //"counter_vsdsram", //Removed due to Jenkins OverLimit
                               "crypto_accelerator accelerator_top",
                               //"eFPGA_v3_wrapper", //Removed due to Jenkins OverLimit
                               "FCNet_neuron",
                               "Fixed2Float",
                               "FMAC",
                               "FMAC FMAC_wrapper",
                               "FPU",
                               "fuserisc core_sram",
                               "fuserisc eFPGA_CPU_TOP",
                               "fuserisc wb_mem_split",
                               "GpioCtrl",
                               //"GPS_Baseband", //Removed due to Jenkins OverLimit
                               //"GPS_Baseband GPS_Baseband_wrapper", //Removed due to Jenkins OverLimit
                               "hack_soc_wrapper",
                               "IIC_AudioDAC",
                               "jacaranda8",
                               "junga_soc",
                               "junga_soc_mpw5",
                               "logic_bist LBIST_mbist_top1",
                               "logic_bist LBIST_mbist_top2",
                               "kasirga_k0 c0_system_macro",
                               "mpw-5c-C0",
                               "keyvalue_caravel",
                               "koggestone_adder",
                               "ks-guitar",
                               "ks-guitar-2s",
                               "marmot_asic",
                               "mbist_ctrl mbist1",
                               "mbist_ctrl mbist2",
                               "mbist_ctrl wb_host",
                               "mbist_ctrl wb_interconnect",
                               "mpw5_4ft4",
                               "mpw5_L1cache",
                               "mpw5_microwatt Microwatt_FP_DFFRFile",
                               "mpw5_microwatt Microwatt_multiply_add",
                               "mpw5_open_eFPGA",
                               "mpw5_prga mpw5_prga_tile_clb",
                               // "mpw5_prga", //removed due to runtime
                               "mpw5_raster_engine",
                               // "multi_encoder", //Removed due to Jenkins OverLimit
                               "peripheral_extender",
                               "picorF0",
                               "PSRAM_PRANG",
                               "PWM-Generator",
                               "pwm_openmpw",
                               "qf100 qf_mkLanaiCPU",
                               "qf100 qf_mkLanaiFrontend",
                               "qf100 qf_mkQF100Fabric",
                               "qf100 qf_mkQF100FlashController",
                               "qf100 qf_mkQF100GPIO",
                               "qf100 qf_mkQF100KSC",
                               "qf100 qf_mkQF100SPI",
                               "qf100 qf_wrapper",
                               "RAD_HARD_ALU",
                               "radiation_harden",
                               "randsack collapsering_macro",
                               "randsack digitalcore_macro",
                               "randsack ringosc_macro",
                               "riscduino rd_yifive",
                               "riscduino riscduino_wrapper",
                               "riscduino_dcore rdd_ycr2_iconnect",
                               "riscduino_qcore rdq_pinmux",
                               "riscduino_qcore rdq_qspim_top",
                               "riscduino_qcore rdq_uart_i2cm_usb_spi_top",
                               "riscduino_qcore rdq_ycr4_iconnect",
                               "riscduino_qcore rdq_ycr_core_top",
                               "riscduino_qcore rdq_ycr_intf",
                               "rng_chaos",
                               "rotfpga",
                               "secure-memory secure-memory-proj",
                               "secure-memory secure-memory-wrapper",
                               "secure-memory trng_wb_wrapper",
                               "SHA1_engine",
                               "soc_io_expander",
                               "soric_project crypto_core",
                               "soric_project flexbex_core",
                               "soric_project soric_soc",
                               "space_controller",
                               //"sram_test", //Removed due to Jenkins OverLimit
                               "subservient",
                               "subservient_SOC",
                               "sudoku-accelerator",
                               "systolic_array",
                               "treepram",
                               "UETRV_Ecore UETRV_Core",
                               "UETRV_Ecore UETRV_counter",
                               "UETRV_Ecore UETRV_Motor_Top",
                               "UETRV_Ecore UETRV_Wishbone_InterConnect",
                               //"UETRV_Ecore UETRV_wrapper", //Removed due to Jenkins OverLimit
                               "updown_caravel",
                               //"vsdbabysoc vsdbabysoc_wrapper", //Removed due to Jenkins OverLimit
                               "vsdbabysoc",
                               "vsdmemsoc rvmyth_core",
                               //"vsdmemsoc", //Removed due to Jenkins OverLimit
                               //"wb_openram", //Removed due to Jenkins OverLimit
                               // "wishbone_CAN", // removed due to runtime
                               "yifive_a2 clk_buf",
                               "yifive_a2 clk_skew_adjust",
                               "yifive_a2 glbl_cfg",
                               "yifive_a2 sdram",
                               "yifive_a2 spi_master",
                               //"yifive_a2 syntacore", //Removed due to Jenkins OverLimit
                               "yifive_a2 uart_i2cm_usb",
                               //"yonga-100m-ethernet", //Removed due to Jenkins OverLimit
                               "yonga-lz4-decoder",
                               "yonga-serv-accelerator";
                    }
                }

                options {
                    lock( label: "mpw-job", quantity: 1 )
                }
                stages {
                    stage("Test") {
                        options {
                            timeout(time: 4, unit: "HOURS");
                        }
                        agent any;
                        steps {
                            script {
                                stage("${DESIGN}") {
                                    sh "nice ./scripts/setup-ci.sh";
                                    sh "nice ./scripts/run-design.sh ${DESIGN}";
                                }
                            }
                        }
                        post {
                            failure {
                                archiveArtifacts artifacts: "**/runs/**/*";
                            }
                        }
                    }
                }

            }
        }
    }

    post {
        failure {
            script {
                try {
                    COMMIT_AUTHOR_EMAIL = sh (returnStdout: true, script: "git --no-pager show -s --format='%ae'").trim();
                    if ( env.BRANCH_NAME == "main" ) {
                        echo("Main development branch: report to stakeholders and commit author.");
                        EMAIL_TO="$COMMIT_AUTHOR_EMAIL, \$DEFAULT_RECIPIENTS";
                    } else {
                        echo("Feature development branch: report only to commit author.");
                        EMAIL_TO="$COMMIT_AUTHOR_EMAIL";
                    }
                } catch (Exception e) {
                    echo "Exception occurred: " + e.toString();
                    EMAIL_TO="\$DEFAULT_RECIPIENTS";
                }
                emailext(
                        to: "$EMAIL_TO",
                        subject: '$DEFAULT_SUBJECT',
                        body: '$DEFAULT_CONTENT',
                        );
            }
        }
    }

}
