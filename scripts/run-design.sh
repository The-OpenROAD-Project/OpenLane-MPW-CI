#!/usr/bin/env bash

set -xeuo pipefail

case $# in
  1 )
    repo="${1}"
    design="${repo}"
    ;;
  2 )
    repo="${1}"
    design="${2}"
    ;;
  * )
    echo "usage: $0 [<REPO>] <DESIGN_NAME>"
    exit 1
    ;;
esac

repo_dir="designs/${repo}"
design_dir="OpenLane/designs/${design}"

echo "[INFO] Setup flow for design ${repo}/${design}."
git config -f .gitmodules "submodule.${repo_dir}.shallow" true
git submodule update --init --recursive "${repo_dir}"
rsync --archive "${repo_dir}/." "${design_dir}"
cp -f "./scripts/${design}/config.tcl" "${design_dir}"
if [[ -d "${repo_dir}/caravel/openlane" ]]
then
    echo "caravel exists in the repo."
else
    echo "carvel missing in the repo and copying from local"
    cp -rf "./caravel" "${repo_dir}/"
fi
echo "[INFO] Repo dir ${repo_dir}"
source "./scripts/${design}/setup-flow.sh"

echo "[INFO] Start OpenLane flow"
make -C OpenLane QUICK_RUN_DESIGN="${design}" quick_run
