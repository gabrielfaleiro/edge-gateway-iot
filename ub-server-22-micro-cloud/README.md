# ub-server-22-micro-cloud

## Ubuntu Server 22


## Install LXD

Install over UC22 using snaps
- https://snapcraft.io/lxd

Clustering: https://linuxcontainers.org/lxd/docs/master/clustering/

LXD image repository: https://uk.lxd.images.canonical.com/
- *lxc image list images:*

Run VMs: https://discuss.linuxcontainers.org/t/running-virtual-machines-with-lxd-4-0/7519

Custom LXD image: https://ubuntu.com/tutorials/create-custom-lxd-images#1-overview

## Install MicroK8s

Install over UC22 using snaps
- https://snapcraft.io/microk8s

- Classic confinement is not permitted in Ubuntu Core
- Use the following method: https://ubuntu.com/engage/embedded-kubernetes-for-secure-iot-edge-webinar?_ga=2.181016551.1799718390.1669971427-1575883042.1669971427
  - Uses the risk "edge". It is not stable yet to run on ubuntu core.

## Install Ceph for distributed storage

Install over UC22 using snaps
- https://docs.ceph.com/en/latest/install/
- https://rook.io/

Rook deploys and manages Ceph clusters running in Kubernetes, while also enabling management of storage resources and provisioning via Kubernetes APIs. We recommend Rook as the way to run Ceph in Kubernetes or to connect an existing Ceph storage cluster to Kubernetes.

## Reference


% sudo lxd init
Would you like to use LXD clustering? (yes/no) [default=no]: 
Do you want to configure a new storage pool? (yes/no) [default=yes]: 
Name of the new storage pool [default=default]: homeassistant
Name of the storage backend to use (cephobject, dir, lvm, zfs, btrfs, ceph) [default=zfs]: 
Create a new ZFS pool? (yes/no) [default=yes]: 
Would you like to use an existing empty block device (e.g. a disk or partition)? (yes/no) [default=no]: 
Size in GiB of the new loop device (1GiB minimum) [default=30GiB]: 32GiB
Would you like to connect to a MAAS server? (yes/no) [default=no]: 
Would you like to create a new local network bridge? (yes/no) [default=yes]: 
What should the new bridge be called? [default=lxdbr0]: 
What IPv4 address should be used? (CIDR subnet notation, “auto” or “none”) [default=auto]: 
What IPv6 address should be used? (CIDR subnet notation, “auto” or “none”) [default=auto]: 
Would you like the LXD server to be available over the network? (yes/no) [default=no]: yes
Address to bind LXD to (not including port) [default=all]: 
Port to bind LXD to [default=8443]: 
Trust password for new clients: 
Again: 
Would you like stale cached images to be updated automatically? (yes/no) [default=yes]: 
Would you like a YAML "lxd init" preseed to be printed? (yes/no) [default=no]: 



lxc launch images:ubuntu/jammy home-assistant


