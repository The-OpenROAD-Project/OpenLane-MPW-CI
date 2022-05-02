# OpenLane MPW CI
[![mpw-2](https://jenkins.openroad.tools/job/OpenLane-MPW-CI-Public/job/mpw-2/job/main/badge/icon/?subject=MPW-2)](https://jenkins.openroad.tools/job/OpenLane-MPW-CI-Public/job/mpw-2/job/main/)
[![mpw-3](https://jenkins.openroad.tools/job/OpenLane-MPW-CI-Public/job/mpw-3/job/main/badge/icon/?subject=MPW-3)](https://jenkins.openroad.tools/job/OpenLane-MPW-CI-Public/job/mpw-3/job/main/)
[![mpw-4](https://jenkins.openroad.tools/job/OpenLane-MPW-CI-Public/job/mpw-4/job/main/badge/icon/?subject=MPW-4)](https://jenkins.openroad.tools/job/OpenLane-MPW-CI-Public/job/mpw-4/job/main/)
[![mpw-5](https://jenkins.openroad.tools/job/OpenLane-MPW-CI-Public/job/mpw-5/job/main/badge/icon/?subject=MPW-5)](https://jenkins.openroad.tools/job/OpenLane-MPW-CI-Public/job/mpw-5/job/main/)

## Description
The OpenLane MPW CI repo contains a regression test to ensure that new versions of OpenLane and OpenROAD continue to work on the efabless MPW designs.
[Efabless](https://platform.efabless.com/projects/public) MPW shuttle Pre-Check has passed on these digital designs. These designs use openlane as 
part of macro hardening`(user_proj_example)` or design wrapping`(user_project_wrapper)`.

Following MPW shuttle designs included as part of CI:
[MPW-2](https://platform.efabless.com/projects/shuttle_name/MPW-2) |
[MPW-3](https://platform.efabless.com/projects/shuttle_name/MPW-3) |
[MPW-4](https://platform.efabless.com/projects/shuttle_name/MPW-4) |
[MPW-5](https://platform.efabless.com/projects/shuttle_name/MPW-5)

## CI results

You can find the results for each shuttle
[here](https://jenkins.openroad.tools/blue/pipelines/?search=mpw).

## Adding new designs to CI

### Add project as a submodule

Add the design repository as a submodule.

```bash
git submodule add <PROJECT_URL> ./designs/<PROJECT_NAME>
```

### Create configuration files

For each design in your project, you will need to create a folder under [scripts](./scripts).

```bash
mkdir ./scripts/<DESIGN_NAME>
```

Inside the folder, a minimum of two files are required `config.tcl` and `setup-flow.sh`.
The `setup-flow.sh` file is called before the OpenLane flow begins, e.g., if your design has external dependencies or requires unpacking GDS files.
The `config.tcl` file setups variables used during OpenLane flow and then starts the flow.
Example files are available here: [config.tcl](./scripts/config.tcl) and [setup-flow.sh](./scripts/setup-flow.sh).

### Local validation

Setup OpenLane and necessary PDKs.

```bash
./scripts/setup-ci.sh <OPENLANE_TAG>
```

Run the design.

```bash
./scripts/run-design.sh [<PROJECT_NAME>] <DESIGN_NAME>
```

Note `<PROJECT_NAME>` must be the same used in the ["Add project as a submodule" section](#add-project-as-a-submodule)
and `<DESIGN_NAME>` must match the folder created in the ["Create configuration files" section](#create-configuration-files).
If both names match, only one argument is necessary.

### Include designs into Jenkins

Add the design to the test list at the [Jenkinsfile](./Jenkinsfile#L24).
Use the same arguments passed to `./scripts/run-design.sh`.
Note that if you have multiple designs in your project, you need to add them individually.
See the `yifive_a2` project, for example, at [Jenkinsfile](./Jenkinsfile#L87-L93).
