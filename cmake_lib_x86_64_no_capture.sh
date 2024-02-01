#! /bin/bash

set -e

proj_root_dir=$(pwd)
install_dir=$proj_root_dir/_install_x86_64/
install -d ${install_dir}/lib

cd $proj_root_dir/libmetartccore6
third_party_pm_dir=${third_party_pm_dir} ./cmake_x86_64_no_capture.sh
install build/libmetartccore6.a ${install_dir}/lib

cd $proj_root_dir/libmetartc6
./cmake_x86_64_no_capture.sh
install build/libmetartc6.a ${install_dir}/lib

cd $proj_root_dir
cp -rf include/ $install_dir

