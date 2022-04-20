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
                        values "APPROX_MULT",
                               "axi_dma_wrapper",
                               "azadi_soc",
                               "caravel_dsp",
                               "counter_alperen",
                               "counter_azadi",
                               "counter_display_mv",
                               "counter_eeuet",
                               "counter_efab",
                               "counter_hhj",
                               "counter_ICESOC",
                               "counter_mpw4_mv",
                               "counter_REST",
                               "counter_TestSOC",
                               "counter_rgb",
                               "counter_vsdsram",
                               "crypto_accelerator accelerator_top",
                               "eFPGA_v3_wrapper",
                               "FCNet_neuron",
                               "Fixed2Float",
                               "FPU",
                               "fuserisc core_sram",
                               "fuserisc eFPGA_CPU_TOP",
                               "fuserisc wb_mem_split",
                               "GpioCtrl",
                               "IIC_AudioDAC",
                               "jacaranda8",
                               "junga_soc",
                               "kasirga_k0 c0_system_macro",
                               "keyvalue_caravel",
                               "koggestone_adder",
                               "ks-guitar",
                               "ks-guitar-2s",
                               "mbist_ctrl mbist1",
                               "mbist_ctrl mbist2",
                               "mbist_ctrl wb_host",
                               "mbist_ctrl wb_interconnect",
                               "mpw5_L1cache",
                               "mpw5_prga",
                               "mpw5_prga mpw5_prga_tile_clb",
                               "multi_encoder",
                               "peripheral_extender",
                               "picorF0",
                               "PSRAM_PRANG",
                               "PWM-Generator",
                               "pwm_openmpw",
                               "RAD_HARD_ALU",
                               "radiation_harden",
                               "randsack collapsering_macro",
                               "randsack digitalcore_macro",
                               "randsack ringosc_macro",
                               "rotfpga",
                               "SHA1_engine",
                               "secure-memory secure-memory-proj",
                               "secure-memory trng_wb_wrapper",
                               "secure-memory secure-memory-wrapper",
                               "soc_io_expander",
                               "soric_project crypto_core",
                               "soric_project flexbex_core",
                               "soric_project soric_soc",
                               "space_controller",
                               "sram_test",
                               "subservient",
                               "subservient_SOC",
                               "sudoku-accelerator",
                               "treepram",
                               "updown_caravel",
                               "vsdbabysoc vsdbabysoc_wrapper",
                               "vsdbabysoc",
                               "vsdmemsoc rvmyth_core",
                               "vsdmemsoc",
                               "wb_openram",
                               // "wishbone_CAN", // removed due to runtime
                               "yifive_a2 clk_buf",
                               "yifive_a2 clk_skew_adjust",
                               "yifive_a2 glbl_cfg",
                               "yifive_a2 sdram",
                               "yifive_a2 spi_master",
                               "yifive_a2 syntacore",
                               "yifive_a2 uart_i2cm_usb",
                               "yonga-100m-ethernet",
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
                                post {
                                    failure {
                                        archiveArtifacts artifacts: "**/*.log, **/openroad_issue_reproducible/**/*";
                                    }
                                }
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
