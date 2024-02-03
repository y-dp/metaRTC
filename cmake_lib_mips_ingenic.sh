#! /bin/bash

set -e

# 第三方组件目录，根据实际修改
third_party_pm_dir=/home/ydp/workspace/repos/ipc/master_components/third_party_components_pm

proj_root_dir=$(pwd)
install_dir=$proj_root_dir/_install_ingenic/
install -d ${install_dir}/lib

cd $proj_root_dir/libmetartccore6
third_party_pm_dir=${third_party_pm_dir} ./cmake_mips_ingenic.sh
install build/libmetartccore6.a ${install_dir}/lib

# 不需要libmetartc6
if false; then
    cd $proj_root_dir/libmetartc6
    ./cmake_mips_ingenic.sh
    install build/libmetartc6.a ${install_dir}/lib
fi

cd $proj_root_dir
cp -rf include/ $install_dir

