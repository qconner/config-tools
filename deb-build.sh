#!/bin/bash
# Copyright 2015 Mellanox Technologies, Ltd
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied.
# See the License for the specific language governing permissions and
# limitations under the License.

                       mlnx_bin=/opt/mellanox/bin
                       mlnx_src=/opt/mellanox/src
  mlnx_sf_mellanox_config_tools=mellanox-config-tools
        mlnx_sd_mlnx_udev_namer=mlnx-udev-namer
                 mlnx_sd_python=python
                   mlnx_sd_ruby=ruby
                 mlnx_sd_puppet=puppet

mlnx_bin=deb${mlnx_bin}
mlnx_src=deb${mlnx_src}

rm -rfv deb/opt
mkdir -p ${mlnx_bin} ${mlnx_src}
cp -f ${mlnx_sf_mellanox_config_tools} ${mlnx_bin}
chmod +x ${mlnx_bin}/${mlnx_sf_mellanox_config_tools}
cp -rf ${mlnx_sd_mlnx_udev_namer} ${mlnx_src}
cp -rf ${mlnx_sd_python} ${mlnx_src}
cp -rf ${mlnx_sd_ruby} ${mlnx_src}
cp -rf ${mlnx_sd_puppet} ${mlnx_src}
cd deb
dpkg-buildpackage -b -tc -uc
cd -
rm -rfv deb/opt
