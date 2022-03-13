pipeline {
    agent any;
    options {
        timeout(time: 16, unit: "HOURS");
    }
    environment {
        COMMIT_AUTHOR_EMAIL= sh (returnStdout: true, script: "git --no-pager show -s --format='%ae'").trim();
        ROUTING_CORES = 32;
    }
    stages {
        stage("Run Tests") {
            matrix {
                axes {
                    axis {
                        name "DESIGN";
                        values "accelerator_top",
                               "APPROX_MULT",
                               "c0_system_macro",
                               "collapsering_macro",
                               "counter_azadi",
                               "counter_display_mv",
                               "counter_ICESOC",
                               "counter_mpw4_mv",
                               "counter_REST",
                               "crypto_core",
                               "digitalcore_macro",
                               "Fixed2Float",
                               "flexbex_core",
                               "FPU",
                               "jacaranda8",
                               "junga_soc",
                               "keyvalue_caravel",
                               "koggestone_adder",
                               "ks-guitar",
                               "ks-guitar-2s",
                               "mbist1",
                               "mbist2",
                               "peripheral_extender",
                               "picorF0",
                               "RAD_HARD_ALU",
                               "ringosc_macro",
                               "rotfpga",
                               "soc_io_expander",
                               "soric_soc",
                               "subservient",
                               "updown_caravel",
                               "wb_host",
                               "wb_interconnect",
                               "yonga-lz4-decoder";
                    }
                }
                stages {
                    stage("Test") {
                        agent any;
                        steps {
                            script {
                                stage("${DESIGN}") {
                                    sh "./scripts/run-design.sh ${DESIGN}";
                                }
                                archiveArtifacts artifacts: "**/*.log, **/openroad_issue_reproducible/**/*";
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
