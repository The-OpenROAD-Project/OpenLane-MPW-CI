# copy config files to design dir
sed -i '/DESIGN_IS_CORE/d' ${design_dir}/openlane/trainable_nn/config.json
sed -i '/RT_MAX_LAYER/d' ${design_dir}/openlane/trainable_nn/config.json
sed -i 's/dir::..\/..\//\dir::/g' ${design_dir}/openlane/trainable_nn/config.json
sed -i 's/dir::pin/dir::openlane\/trainable_nn\/pin/g' ${design_dir}/openlane/trainable_nn/config.json
