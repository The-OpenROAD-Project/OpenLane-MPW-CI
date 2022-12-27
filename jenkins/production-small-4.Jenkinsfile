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
                        values 'bitcoin_asic bc_sha1_top',
                               'bitcoin_asic btc_miner_top',
                               'caravel_PISO',
                               'caravel_freqdiv',
                               'caravel_rtc',
                               'caravel_r2_4bit_bm',
                               'caravel_rv32i',
                               'graphics_controller',
                               'ks-guitar-2s',
                               'mpw7_accelerator_core',
                               'mpw7_ICG',
                               'mpw7_RTCClock',
                               'mpw7_projtes',
                               'mpw7_sd',
                               'mpw7_yonga_soc yonga_mcu_peripherals_2',
                               'ppcpu ppcpu_clk_div',
                               'ppcpu ppcpu_core',
                               'ppcpu ppcpu_icache',
                               'ppcpu ppcpu_top_cw_logic',
                               'ppcpu ppcpu_upper_core_logic',
                               'ppcpu ppcpu_uprj_w_const',
                               'ppcpu ppcpu_wb_compressor',
                               'ppcpu ppcpu_wb_cross_clk',
                               'ppcpu ppcpu_wishbone_arbiter',
                               'rhythmIC',
                               'riscduino_S4 rdS4_uart_i2cm_usb_spi_top',
                               'riscduino_S4 rdS4_wb_host',
                               'riscduino_qcore rdq_uart_i2cm_usb_spi_top';
                    }
                }

                stages {
                    stage("Test") {
                        options {
                            timeout(time: 6, unit: "HOURS");
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
