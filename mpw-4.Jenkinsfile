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
                        values "APPROX_MULT",
                               "counter_azadi", 
                               "counter_display_mv", 
                               "counter_ICESOC", 
                               "counter_mpw4_mv", 
                               "counter_REST", 
                               "junga_soc",
                               "kasirga_k0 c0_system_macro",
                               "keyvalue_caravel",
                               "koggestone_adder",
                               "ks-guitar",
                               "ks-guitar-2s",
                               "RAD_HARD_ALU",
                               "randsack collapsering_macro",
                               "randsack digitalcore_macro",
                               "randsack ringosc_macro",
                               "soric_project crypto_core",
                               "soric_project flexbex_core",
                               "soric_project soric_soc",
                               "space_controller",
                               "subservient",
                               "updown_caravel",
                               "yifive_a2 clk_buf",
                               "yifive_a2 clk_skew_adjust",
                               "yifive_a2 glbl_cfg",
                               "yifive_a2 sdram",
                               "yifive_a2 spi_master",
                               "yifive_a2 syntacore", 
                               "yifive_a2 uart_i2cm_usb";
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
