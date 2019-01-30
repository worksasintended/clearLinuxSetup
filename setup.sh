#!/bin/bash
#install bundles
swupd bundle-add vim hpc-utils linux-dev dev-utils dev-utils-dev findutils make openssh-server
#network
mkdir -p /etc/systemd/network/
cp 70-static.network/etc/systemd/network/70-static.network
cp 71-inf.network/etc/systemd/network/71-inf.network
systemctl enable systemd-networkd
systemctl enable systemd-resolved
echo "make sure to add an ssh user"
