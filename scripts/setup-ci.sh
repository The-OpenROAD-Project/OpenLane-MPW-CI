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
make -C OpenLane pdk-with-sram -j 1 NPROC=1
# mkdir -p OpenLane/pdks
# make -C OpenLane open_pdks -j 1 NPROC=1
# mkdir -p OpenLane/pdks/sky130A
# curl -s https://api.github.com/repos/Cloud-V/sky130-builds/releases/latest \
#   | grep "browser_download.*sky130A.tar.xz" \
#   | cut -d : -f 2,3 | tr -d \" \
#   | wget -qi - -O - \
#   | tar -xJ -C OpenLane/pdks/sky130A/.
echo "[INFO] PDKs setup complete."
