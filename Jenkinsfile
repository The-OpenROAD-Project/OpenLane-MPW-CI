pipeline {
    agent any;
    options {
        timeout(time: 8, unit: "HOURS");
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
                        values "updown_caravel", "subservient", "Fixed2Float", "jacaranda8", "mbist1", "mbist2", "wb_host", "collapsering_macro", "digitalcore_macro", "ringosc_macro", "accelerator_top", "peripheral_extender", "picorF0", "rotfpga", "soric_soc", "crypto_core", "flexbex_core", "soc_io_expander", "yonga-lz4-decoder";
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
