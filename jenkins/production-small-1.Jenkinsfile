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
                        values 'Actuator_Controller AC_actuator_driver_controller',
                               'Actuator_Controller AC_cells_controller',
                               'Actuator_Controller AC_memory_controler',
                               'Actuator_Controller AC_spi_mod',
                               'Actuator_Controller AC_system_controler',
                               'Actuator_Controller AC_top',
                               'alu_xor alu_xor_wrapper',
                               'alu_xor',
                               'APPROX_MULT',
                               'async_fib2',
                               'caravel_dsp',
                               'ChirstmasTreeController',
                               'counter_alperen',
                               'counter_azadi',
                               'counter_display_mv',
                               'counter_eeuet',
                               'counter_efab',
                               'counter_hhj',
                               'counter_ICESOC',
                               'counter_mpw4_mv',
                               'counter_REST',
                               'counter_rgb',
                               'counter_TestSOC',
                               'counter_vsdsram',
                               'Fixed2Float',
                               'FMAC',
                               'FPU',
                               'fuserisc eFPGA_CPU_TOP',
                               'fuserisc wb_mem_split',
                               'GpioCtrl',
                               'jacaranda8',
                               'junga_soc',
                               'kasirga_k0 c0_system_macro',
                               'koggestone_adder',
                               'logic_bist LBIST_mbist_top1',
                               'logic_bist LBIST_mbist_top2',
                               'mbist_ctrl mbist1',
                               'mbist_ctrl mbist2',
                               'mbist_ctrl wb_host',
                               'mpw-5c-C0',
                               'mpw5_L1cache',
                               'mpw6_prga mpw6_prga_tile_clb',
                               'peripheral_extender',
                               'picorF0',
                               'PSRAM_PRANG',
                               'PWM-Generator',
                               'randsack collapsering_macro',
                               'randsack digitalcore_macro',
                               'randsack ringosc_macro';
                    }
                }

                stages {
                    stage("Test") {
                        options {
                            timeout(time: 2, unit: "HOURS");
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
