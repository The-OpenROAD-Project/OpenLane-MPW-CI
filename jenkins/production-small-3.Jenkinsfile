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
                        values 'Elpis_Light Elpis_chip_controller',
                               'Elpis_Light Elpis_core',
                               'UETRV_Ecore UETRV_Core',
                               'UETRV_Ecore UETRV_counter',
                               'UETRV_Ecore UETRV_Motor_Top',
                               'fct_iot_biquad',
                               'fct_iot_biquad fct_iot_bqmain',
                               'riscduino_hikaysici',
                               'updown_caravel',
                               'vsdbabysoc',
                               'vsdbabysoc vsdbabysoc_wrapper',
                               'vsdmemsoc rvmyth_core',
                               'yifive_a2 clk_buf',
                               'yifive_a2 clk_skew_adjust',
                               'yifive_a2 glbl_cfg',
                               'yifive_a2 sdram',
                               'yifive_a2 spi_master',
                               'yifive_a2 syntacore',
                               'yifive_a2 uart_i2cm_usb',
                               'yonga-can-controller',
                               'yonga-lz4-decoder',
                               'yonga_modbus_controller',
                               'yonga-100m-ethernet',
                               'yonga-serv-accelerator';
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
