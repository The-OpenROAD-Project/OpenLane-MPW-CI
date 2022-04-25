#!/usr/bin/env bash

set -euo pipefail

case $# in
  0)
    if [[ -z "${OPENLANE_DOCKER_TAG+x}" ]]; then
      echo "[INFO] No arguments given and OPENLANE_DOCKER_TAG is unset."
      export OPENLANE_DOCKER_TAG="$(cat openlane-tag)"
      echo "[INFO] Imported OpenLane tag ${OPENLANE_DOCKER_TAG} from file."
    else
      echo "[INFO] Using OpenLane tag ${OPENLANE_DOCKER_TAG} from environment."
    fi
    ;;
  1) # tag given, do not use from file
    export OPENLANE_DOCKER_TAG="$1"
    echo "[INFO] Using OpenLane tag ${OPENLANE_DOCKER_TAG}"
    ;;
  *)
    echo "usage: $0 [<TAG>]"
    exit 1
    ;;
esac

if [[ -z "${OPENLANE_DOCKER_IMAGE+x}" ]]; then
  echo "[INFO] Variable OPENLANE_DOCKER_IMAGE unset, using efabless/openlane:${OPENLANE_DOCKER_TAG}."
  export OPENLANE_DOCKER_IMAGE="efabless/openlane:${OPENLANE_DOCKER_TAG}"
else
  echo "[INFO] Using OpenLane image ${OPENLANE_DOCKER_IMAGE} from environment."
fi

echo "[INFO] Download OpenLane source files."
rm -rf OpenLane
mkdir -p OpenLane
curl -L "https://github.com/The-OpenROAD-Project/OpenLane/archive/refs/tags/${OPENLANE_DOCKER_TAG}.tar.gz" \
  | tar --strip 1 -xzC OpenLane

echo "[INFO] Starting PDKs setup..."
make -C OpenLane pdk-with-sram -j 1 NPROC=1 || make -C OpenLane pdk -j 1 NPROC=1
echo "[INFO] PDKs setup complete."
echo "[INFO] Starting Caravel setup..."
rm -rf caravel
mkdir -p caravel
curl -L "https://github.com/efabless/caravel/archive/refs/tags/mpw-5c.tar.gz" \
  | tar --strip 1 -xzC caravel
echo "[INFO] Caravel setup complete and CARAVEL_ROOT=$(pwd)/caravel."
