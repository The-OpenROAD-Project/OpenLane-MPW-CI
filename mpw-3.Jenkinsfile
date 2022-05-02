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
                        values "counter_efab", 
                               "counter_hhj", 
                               "counter_rgb", 
                               "counter_vsdsram", 
                               "crypto_accelerator accelerator_top",
                               "FCNet_neuron",
                               "Fixed2Float",
                               "GpioCtrl",
                               "jacaranda8",
                               "mbist_ctrl mbist1",
                               "mbist_ctrl mbist2",
                               "mbist_ctrl wb_host",
                               "mbist_ctrl wb_interconnect",
                               "peripheral_extender",
                               "picorF0",
                               "PWM-Generator",
                               "rotfpga",
                               "sram_test", 
                               "sudoku-accelerator",
                               "treepram",
                               "vsdbabysoc vsdbabysoc_wrapper", 
                               "vsdbabysoc",
                               "vsdmemsoc rvmyth_core",
                               "vsdmemsoc", 
                               "wb_openram", 
                               "yonga-100m-ethernet",
                               "yonga-lz4-decoder",
                               "yonga-serv-accelerator";
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
