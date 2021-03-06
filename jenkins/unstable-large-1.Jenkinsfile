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
                        values 'azadi_soc',
                               'Elpis_Light Elpis_custom_sram',
                               'IIC_AudioDAC',
                               'ks-guitar',
                               'mpw6_prga',
                               'qf100 qf_wrapper',
                               'riscduino_S3 rdS3_ycr_core_top',
                               'UETRV_Ecore UETRV_Wishbone_InterConnect',
                               'upb_natalius_soc NSoC_dualport_sram',
                               'yonga_turbo_encoder';
                    }
                }

                stages {
                    stage("Test") {
                        options {
                            timeout(time: 8, unit: "HOURS");
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
