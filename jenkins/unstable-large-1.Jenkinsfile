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
                               'marmot_asic_v2',
                               'mpw6_prga',
                               'mpw7_prga',
                               'qf100 qf_wrapper',
                               'riscduino_S4 rdS4_ycr_core_top',
                               'spectrometer_hyperspace_mpw7',
                               'yonga_turbo_encoder',
                               'upb_natalius_soc NSoC_dualport_sram',
                               'yonga_turbo_encoder',
                               'mpw7_yonga_soc yonga_mcu_axi_node_intf_wrap',
                               'mpw7_yonga_soc yonga_mcu_mba_core_region_2',
                               'yifive_a2 syntacore';
                    }
                }

                stages {
                    stage("Test") {
                        options {
                            timeout(time: 10, unit: "HOURS");
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
