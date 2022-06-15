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
                               'GPS_Baseband GPS_Baseband_wrapper',
                               'GPS_Baseband',
                               'keyvalue_caravel',
                               'ks-guitar-2s',
                               'mbist_ctrl wb_interconnect',
                               'mpw5_4ft4',
                               'mpw5_open_eFPGA',
                               'multi_encoder',
                               'radiation_harden',
                               'riscduino riscduino_wrapper',
                               'SHA1_engine',
                               'subservient_SOC',
                               'UETRV_Ecore UETRV_wrapper',
                               'vsdmemsoc',
                               'wb_openram';
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
