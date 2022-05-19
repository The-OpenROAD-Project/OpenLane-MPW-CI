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
                               'azadi_soc_iii',
                               'eFPGA_v3_wrapper',
                               'FMAC FMAC_wrapper',
                               'fuserisc core_sram',
                               'GPS_Baseband GPS_Baseband_wrapper',
                               'GPS_Baseband',
                               'hack_soc_wrapper',
                               'IIC_AudioDAC',
                               'keyvalue_caravel',
                               'ks-guitar-2s',
                               'mbist_ctrl wb_interconnect',
                               'mpw5_4ft4',
                               'mpw5_microwatt Microwatt_FP_DFFRFile',
                               'mpw5_microwatt Microwatt_multiply_add',
                               'mpw5_open_eFPGA',
                               'multi_encoder',
                               'qf100 qf_mkLanaiCPU',
                               'qf100 qf_mkQF100FlashController',
                               'radiation_harden',
                               'riscduino riscduino_wrapper',
                               'SHA1_engine',
                               'sram_test',
                               'subservient_SOC',
                               'UETRV_Ecore UETRV_wrapper',
                               'vsdbabysoc vsdbabysoc_wrapper',
                               'vsdmemsoc',
                               'wb_openram',
                               'yifive_a2 syntacore',
                               'yonga-100m-ethernet',
                               'yonga-serv-accelerator';
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
