# copy config files to design dir
if [ -z "$NICKNAME" ]; then
   rsync --archive designs/${design}/. ${design_dir}
else
   rsync --archive designs/${NICKNAME}/. ${design_dir}
fi
cp -f ./scripts/config.tcl ${design_dir}
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/user_proj_example/config.tcl
