#!/usr/bin/env bash

set -euo pipefail

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

echo "[INFO] Starting PDKs setup..."
python3 -m pip install --user --upgrade --no-cache-dir pip
python3 -m pip install --user --upgrade --no-cache-dir volare
python3 -m volare enable_or_build -t NULL -j$(nproc) \
  $(python3 OpenLane/dependencies/tool.py open_pdks -f commit)
echo "[INFO] PDKs setup complete."

echo "[INFO] Setup flow for design ${repo}/${design}."
git config -f .gitmodules "submodule.${repo_dir}.shallow" true
git submodule update --init --recursive "${repo_dir}"
git config -f .gitmodules --unset "submodule.${repo_dir}.shallow"
rsync --archive "${repo_dir}/." "${design_dir}"
cp -f "./scripts/${design}/config.tcl" "${design_dir}"
source "./scripts/${design}/setup-flow.sh"

echo "[INFO] Start OpenLane flow"
if [[ -z "${OPENLANE_DOCKER_TAG+x}" ]]; then
  echo "[INFO] Importing OpenLane tag from file."
  export OPENLANE_DOCKER_TAG="$(cat openlane-tag)"
else
  echo "[INFO] Using OpenLane tag ${OPENLANE_DOCKER_TAG} from environment."
fi

if [[ -z "${OPENLANE_DOCKER_IMAGE+x}" ]]; then
  echo "[INFO] Variable OPENLANE_DOCKER_IMAGE unset, using efabless/openlane."
  export OPENLANE_DOCKER_IMAGE="efabless/openlane:${OPENLANE_DOCKER_TAG}"
else
  echo "[INFO] Using OpenLane image ${OPENLANE_DOCKER_IMAGE} from environment."
fi

make -C OpenLane QUICK_RUN_DESIGN="${design}" quick_run
