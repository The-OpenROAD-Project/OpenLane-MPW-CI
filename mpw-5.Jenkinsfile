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
                               "alu_xor",
                               "alu_xor alu_xor_wrapper",
                               "async_fib2",
                               "asicle",
                               "azadi_soc_iii", 
                               "ChirstmasTreeController",
                               "counter_efab", 
                               "counter_TestSOC", 
                               "FMAC",
                               "FMAC FMAC_wrapper",
                               "GPS_Baseband", 
                               "GPS_Baseband GPS_Baseband_wrapper", 
                               "hack_soc_wrapper",
                               "IIC_AudioDAC",
                               "junga_soc_mpw5",
                               "logic_bist LBIST_mbist_top1",
                               "logic_bist LBIST_mbist_top2",
                               "mpw-5c-C0",
                               "marmot_asic",
                               "mpw5_4ft4",
                               "mpw5_L1cache",
                               "mpw5_microwatt Microwatt_FP_DFFRFile",
                               "mpw5_microwatt Microwatt_multiply_add",
                               "mpw5_open_eFPGA",
                               "mpw5_prga mpw5_prga_tile_clb",
                               // "mpw5_prga", //removed due to runtime
                               "mpw5_raster_engine",
                               "PSRAM_PRANG",
                               "pwm_openmpw",
                               "qf100 qf_mkLanaiCPU",
                               "qf100 qf_mkLanaiFrontend",
                               "qf100 qf_mkQF100Fabric",
                               "qf100 qf_mkQF100FlashController",
                               "qf100 qf_mkQF100GPIO",
                               "qf100 qf_mkQF100KSC",
                               "qf100 qf_mkQF100SPI",
                               "qf100 qf_wrapper",
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
                               "secure-memory secure-memory-proj",
                               "secure-memory secure-memory-wrapper",
                               "secure-memory trng_wb_wrapper",
                               "subservient_SOC",
                               "systolic_array",
                               "UETRV_Ecore UETRV_Core",
                               "UETRV_Ecore UETRV_counter",
                               "UETRV_Ecore UETRV_Motor_Top",
                               "UETRV_Ecore UETRV_Wishbone_InterConnect",
                               "UETRV_Ecore UETRV_wrapper"; 
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
