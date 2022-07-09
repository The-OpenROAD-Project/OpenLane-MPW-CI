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
                        values 'ExperiarSoC ExpSoc_CaravelHost',
                               'ExperiarSoC ExpSoc_Flash',
                               'ExperiarSoC ExpSoc_Video',
                               'ExperiarSoC ExpSoc_WishboneInterconnect',
                               'FMAC FMAC_wrapper',
                               'acor_dct32',
                               'caravel_NNgen',
                               'figaro',
                               'fossiAES',
                               'hack_soc_wrapper',
                               'hp35_core',
                               'hsv_mixer',
                               'mpw6_aes_rng',
                               'mpw6_alu_xor',
                               'mpw6_alu_xor4',
                               'mpw6_REST_II',
                               'mpw6_hyperram',
                               'mpw6-leaf',
                               'mpw6_microwatt Microwatt_FP_DFFRFile',
                               'mpw6_microwatt Microwatt_multiply_add',
                               'pong-chip',
                               'qf100 qf_mkLanaiFrontend',
                               'qf100 qf_mkQF100Fabric',
                               'qf100 qf_mkQF100GPIO',
                               'qf100 qf_mkQF100KSC',
                               'qf100 qf_mkQF100SPI',
                               'qf100 qf_mkLanaiCPU',
                               'qf100 qf_mkQF100FlashController',
                               'RAD_HARD_ALU',
                               'riscduino_dcore rdd_ycr2_iconnect',
                               'riscduino_S3 rdS3_ycr_iconnect',
                               'riscduino_qcore rdq_pinmux',
                               'riscduino_qcore rdq_qspim_top',
                               'riscduino_qcore rdq_uart_i2cm_usb_spi_top',
                               'riscduino_qcore rdq_ycr_intf',
                               'rng_chaos',
                               'rng_chaos_scroll',
                               'rotfpga',
                               'rvj1-caravel-soc',
                               'secure-memory secure-memory-proj',
                               'secure-memory secure-memory-wrapper',
                               'secure-memory trng_wb_wrapper',
                               'seven_segments',
                               'soc_io_expander',
                               'soric_project soric_soc',
                               'space_controller',
                               'sram_test',
                               'subservient',
                               'sudoku-accelerator',
                               'systolic_array';
                    }
                }

                stages {
                    stage("Test") {
                        options {
                            timeout(time: 5, unit: "HOURS");
                        }
                        agent any;
                        steps {
                            script {
                                stage("${DESIGN}") {
                                    retry(3) {
                                        sh "nice ./scripts/setup-ci.sh";
                                    }
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
