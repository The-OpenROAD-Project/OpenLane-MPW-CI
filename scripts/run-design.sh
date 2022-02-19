NICKNAME=""
if [ $# -ne 1 ]; then
  echo "usage: $0 <DESIGN_NAME>"
  if [ $# -eq 2 ]; then
  echo "usage: $0 <DESIGN_NAME> <DESIGN_REPO>"
  NICKNAME=$2
  fi
  #exit 1
fi

design=${1}
tag="2022.02.16_01.55.24"
ol_dir="OpenLane-${tag}"
design_dir="${ol_dir}/designs/${design}"
url="https://github.com/The-OpenROAD-Project/OpenLane/archive/refs/tags/$tag.tar.gz"
docker_image="efabless/openlane:${tag}"

# get latest image
docker pull ${docker_image}

# download OL
curl -L ${url} | tar -xzC .

# install pdk
if [ ! -f "${ol_dir}/pdks-setup.done" ]; then
  echo "[INFO] PDKs not set."
  while [ -f "${ol_dir}/pdks-setup.lock" ]; do
    echo "[INFO] PDKs setup already running, waiting for process to finish..."
    sleep 10
  done
  echo "[INFO] Starting PDKs setup..."
  touch "${ol_dir}/pdks-setup.lock"
  make -C ${ol_dir} OPENLANE_IMAGE_NAME=${docker_image} pdk -j 1 NPROC=1
  echo "[INFO] PDKs setup complete."
  touch "${ol_dir}/pdks-setup.done"
  rm "${ol_dir}/pdks-setup.lock"
fi

# run commands to prepare design for OL flow
source ./scripts/${design}/setup-flow.sh

# run OL flow
make -C ${ol_dir} OPENLANE_IMAGE_NAME=${docker_image} QUICK_RUN_DESIGN=${design} quick_run
