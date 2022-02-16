if [ $# -ne 1 ]; then
  echo "usage: $0 <DESIGN_NAME>"
  exit 1
fi

design=${1}
tag=$(cat openlane-tag)
ol_dir=OpenLane-${tag}
design_dir=${ol_dir}/designs/${design}
url=https://github.com/The-OpenROAD-Project/OpenLane/archive/refs/tags/$tag.tar.gz
docker_image=efabless/openlane:${tag}

# get latest image
docker pull ${docker_image}

# download OL
curl -L $url | tar -xzC .

# install pdk
if [ ! -f pdks-setup.done ]; then
  echo "[INFO] PDKs not set."
  while [ -f pdks-setup.lock ]; do
    echo "[INFO] PDKs setup already running, waiting for process to finish..."
    sleep 10
  done
  echo "[INFO] Starting PDKs setup..."
  touch pdks-setup.lock
  make -C ${ol_dir} OPENLANE_IMAGE_NAME=${docker_image} pdk -j 1 NPROC=1
  echo "[INFO] PDKs setup complete."
  touch pdks-setup.done
  rm pdks-setup.lock
fi

# copy config files to design dir
rsync --archive designs/${design}/. ${design_dir}
cp -f config.tcl ${design_dir}
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/user_proj_example/config.tcl
make -C ${ol_dir} OPENLANE_IMAGE_NAME=${docker_image} QUICK_RUN_DESIGN=${design} quick_run
