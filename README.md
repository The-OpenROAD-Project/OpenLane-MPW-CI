# OpenLane MPW CI
[![Build Status](https://jenkins.openroad.tools/job/OpenLane-MPW-CI-Public/job/main/badge/icon)](https://jenkins.openroad.tools/job/OpenLane-MPW-CI-Public/job/main/)

This repository contains scripts to run stable MPW shuttle designs.

## CI results

You can find the results for the main branch
[here](https://jenkins.openroad.tools/blue/organizations/jenkins/OpenLane-MPW-CI-Public/branches/).

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
