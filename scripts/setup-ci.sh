#!/usr/bin/env bash

set -xeuo pipefail

if [ $# -ne 1 ]; then
  echo "usage: $0 <TAG>"
  exit 1
fi

echo "[INFO] Download OpenLane source files."
rm -rf OpenLane
mkdir -p OpenLane
curl -L "https://github.com/The-OpenROAD-Project/OpenLane/archive/refs/tags/${1}.tar.gz" \
  | tar --strip 1 -xzC OpenLane

echo "[INFO] Starting PDKs setup..."
make OPENLANE_DOCKER_TAG=$1 -C OpenLane pdk-with-sram -j 1 NPROC=1
echo "[INFO] PDKs setup complete."
echo "[INFO] Starting Caravel setup..."
rm -rf caravel
mkdir -p caravel
curl -L "https://github.com/efabless/caravel/archive/refs/tags/mpw-5c.tar.gz" \
  | tar --strip 1 -xzC caravel
export CARAVEL_ROOT="$(pwd)/caravel"
echo "[INFO] Caravel setup complete."
