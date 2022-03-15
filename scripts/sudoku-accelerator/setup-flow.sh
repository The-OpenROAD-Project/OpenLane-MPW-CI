# copy config files to design dir
rsync --archive designs/${design}/. ${design_dir}
cp -f ./scripts/${design}/config.tcl ${design_dir}
gzip -d ${design_dir}/gds/sudoku_accelerator_wrapper.gds.gz  ${design_dir}/gds/
