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
                        values 'Elpis_Light Elpis_chip_controller',
                               'Elpis_Light Elpis_core',
                               'RV_1Cycle_CPU_Core',
                               'SHA1_engine',
                               'SystolicArray',
                               'UETRV_Ecore UETRV_Core',
                               'UETRV_Ecore UETRV_counter',
                               'UETRV_Ecore UETRV_Motor_Top',
                               'leros_chip',
                               'biquad_mpw7',
                               'keyvalue_caravel',
                               'mpw7_waprv warpv_core',
                               'mpw7_waprv warpv_wb_interface',
                               'memory_array_8x64',
                               'miranda_fpga',
                               'riscv_cpu_mpw7',
                               'riscv_cpu_mpw7 riscv_cpu_counter',
                               'rioschip',
                               'riscduino_hikaysici',
                               'uP16_ISA uP16_cpu',
                               'uP16_ISA uP16_soc_config',
                               'updown_caravel',
                               'uMotorSequencer ums_controller_core',
                               'uMotorSequencer ums_driver_core',
                               'uMotorSequencer ums_spi_controller',
                               'vsdbabysoc',
                               'vsdbabysoc vsdbabysoc_wrapper',
                               'vsdmemsoc',
                               'vsdmemsoc rvmyth_core',
                               'waveform_generator wfg_merge_memory',
                               'waveform_generator wfg_wb_memory',
                               'waveform_generator wfg_wb_mux',
                               'waveform_generator wfg_top',
                               'yifive_a2 clk_buf',
                               'yifive_a2 clk_skew_adjust',
                               'yifive_a2 glbl_cfg',
                               'yifive_a2 sdram',
                               'yifive_a2 spi_master',
                               'yifive_a2 uart_i2cm_usb',
                               'yonga-can-controller_mpw7',
                               'yonga-lz4-decoder',
                               'yonga_modbus_controller',
                               'yonga-100m-ethernet',
                               'yonga-serv-accelerator';
                    }
                }

                stages {
                    stage("Test") {
                        options {
                            timeout(time: 6, unit: "HOURS");
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
