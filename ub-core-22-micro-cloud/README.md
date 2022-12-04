# ub-core-22-micro-cloud

## Ubuntu Core 22

The project uses a Raspberry Pi 4 as the base

Main tutorial: https://ubuntu.com/core/docs/install-raspberry-pi

Found issues:
- Update EEPROM: https://forum.snapcraft.io/t/pi4-eeprom-support-for-piboot/29455
- https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#updating-the-bootloader
- Boot from USB: https://forum.snapcraft.io/t/usb-not-working-on-64-bit-ubuntu-core-on-raspberry-pi/32236


Booting from USB is apparently not working (https://forum.snapcraft.io/t/usb-boot-ubuntu-core-on-a-rpi-4/26779/13). Thus, the followed approach is installing UC22 on an SD, and connect a FAT32 formated SSD.

According to the forum, Ubuntu Core should perform minimal SD card write operations. Any deployed application shall be placed to work over an SSD partition.

## Install LXD

Install over UC22 using snaps
- https://snapcraft.io/lxd

Clustering: https://linuxcontainers.org/lxd/docs/master/clustering/

## Install MicroK8s

Install over UC22 using snaps
- https://snapcraft.io/microk8s

- Classic confinement is not permitted in Ubuntu Core
- Use the following method: https://ubuntu.com/engage/embedded-kubernetes-for-secure-iot-edge-webinar?_ga=2.181016551.1799718390.1669971427-1575883042.1669971427
  - Uses the risk "edge". It is not stable yet to run on ubuntu core.
- Strict mode: https://microk8s.io/docs/setting-snap-channel

## Install Ceph for distributed storage

Install over UC22 using snaps
- https://docs.ceph.com/en/latest/install/
- https://rook.io/

Rook deploys and manages Ceph clusters running in Kubernetes, while also enabling management of storage resources and provisioning via Kubernetes APIs. We recommend Rook as the way to run Ceph in Kubernetes or to connect an existing Ceph storage cluster to Kubernetes.



