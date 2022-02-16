pipeline {
    agent any;
    options {
        timeout(time: 8, unit: "HOURS");
    }
    environment {
        ROUTING_CORES = 32;
    }
    stages {
        stage("Run Tests") {
            matrix {
                axes {
                    axis {
                        name "DESIGN";
                        values "updown_caravel", "subservient";
                    }
                }
                stages {
                    stage("Test") {
                        agent any;
                        steps {
                            script {
                                stage("${DESIGN}") {
                                    sh "python3 -m pip install --user pyyaml click";
                                    sh "./run.sh ${DESIGN}";
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: "**/*.log, **/openroad_issue_reproducible/**/*";
        }
        failure {
            emailext (
                    to: '$DEFAULT_RECIPIENTS',
                    subject: '$DEFAULT_SUBJECT',
                    body: '$DEFAULT_CONTENT',
                    );
        }
    }
}
