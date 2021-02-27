#!/bin/bash

OpVersion=$(echo "$(cat /workdir/openwrt/package/lean/default-settings/files/zzz-default-settings)" | grep -Po "DISTRIB_REVISION=\'\K[^\']*")

#OpVersion=$(date "+%Y.%m.%d"\ \compiled\ \by\ \tg:@zhe_teng)

echo $OpVersion

sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$OpVersion\"/" /opt/openwrt/mk_rk3328_beikeyun.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$OpVersion\"/" /opt/openwrt/mk_rk3328_beikeyun_sfe.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$OpVersion\"/" /opt/openwrt/mk_rk3328_l1pro.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$OpVersion\"/" /opt/openwrt/mk_rk3328_l1pro_sfe.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$OpVersion\"/" /opt/openwrt/mk_s905d_n1.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$OpVersion\"/" /opt/openwrt/mk_s905d_n1_sfe.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$OpVersion\"/" /opt/openwrt/mk_s905x3_multi.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$OpVersion\"/" /opt/openwrt/mk_s905x3_multi_sfe.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$OpVersion\"/" /opt/openwrt/mk_s912_zyxq.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$OpVersion\"/" /opt/openwrt/mk_s912_zyxq_sfe.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$OpVersion\"/" /opt/openwrt/mk_s922x_gtking.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$OpVersion\"/" /opt/openwrt/mk_s922x_gtking_sfe.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$OpVersion\"/" /opt/openwrt/n1-to-vplus.sh
sed -i "s/OPENWRT_VER=.*/OPENWRT_VER=\"$OpVersion\"/" /opt/openwrt/n1-to-vplus_sfe.sh

# 修改sfe打包脚本内底包名字
#sed -i "s/OPWRT_ROOTFS_GZ=.*/OPWRT_ROOTFS_GZ=\"$\{PWD}\/sfe-\openwrt-armvirt-64-default-rootfs.tar.gz\"/" /opt/openwrt/mk_beikeyun_opimg_sfe.sh
#sed -i "s/OPWRT_ROOTFS_GZ=.*/OPWRT_ROOTFS_GZ=\"$\{PWD}\/sfe-\openwrt-armvirt-64-default-rootfs.tar.gz\"/" /opt/openwrt/mk_n1_opimg_sfe.sh
#sed -i "s/OPWRT_ROOTFS_GZ=.*/OPWRT_ROOTFS_GZ=\"$\{PWD}\/sfe-\openwrt-armvirt-64-default-rootfs.tar.gz\"/" /opt/openwrt/mk_s905x3_opimg_sfe.sh

# 修改sfe打包脚本内的内核版本
#sed -i "s/KERNEL_VERSION=.*/KERNEL_VERSION=\"5.9.14-flippy-50+\"/" /opt/openwrt/mk_beikeyun_opimg_sfe.sh
#sed -i "s/KERNEL_VERSION=.*/KERNEL_VERSION=\"5.9.14-flippy-50+\"/" /opt/openwrt/mk_n1_opimg_sfe.sh
#sed -i "s/KERNEL_VERSION=.*/KERNEL_VERSION=\"5.9.14-flippy-50+\"/" /opt/openwrt/mk_s905x3_opimg_sfe.sh
