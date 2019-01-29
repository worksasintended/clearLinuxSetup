#!/bin/bash
#install bundles

#network
mkdir -p /etc/systemd/network/
cp 70-static.network/etc/systemd/network/70-static.network
cp 71-inf.network/etc/systemd/network/71-inf.network
systemctl enable systemd-networkd
systemctl enable systemd-resolved
systemctl restart systemd-networkd
systemctl restart systemd-resolved

