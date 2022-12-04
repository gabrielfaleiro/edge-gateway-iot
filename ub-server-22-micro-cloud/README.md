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



