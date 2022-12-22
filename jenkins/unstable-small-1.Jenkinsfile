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
                        values 'asicle',
                               'axi_dma_wrapper',
                               'azadi_soc_iii_dft',
                               'eFPGA_v3_wrapper',
                               'fuserisc core_sram',
                               'Ghazi_DFT',
                               'GPS_Baseband',
                               'OpenFASOC_puplpino',
                               'mpw5_4ft4',
                               'mpw7_open_eFPGA',
                               'mpw7_AI_chip',
                               'multi_encoder',
                               'radiation_harden',
                               'rioschip',
                               'subservient_SOC',
                               'secure-memory secure-memory-wrapper',
                               'UETRV_Ecore UETRV_wrapper',
                               'wb_openram';
                    }
                }

                stages {
                    stage("Test") {
                        options {
                            timeout(time: 3, unit: "HOURS");
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
                EMAIL_TO = sh (returnStdout: true, script: "git --no-pager show -s --format='%ae'").trim();
                emailext(
                        to: "$EMAIL_TO",
                        subject: '$DEFAULT_SUBJECT',
                        body: '$DEFAULT_CONTENT',
                        );
            }
        }
    }

}
