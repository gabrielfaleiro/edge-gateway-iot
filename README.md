# edge-gateway-iot

This repository explore different edge computing solutions.

## Sumary of conclusions
Some facts and recomendations from tests and trainings

- SD cards are not reliable for commercial applications
- Raspberry Pis have contrained temperature ranges
- Ubuntu Core and snaps are useful for standalone and embedded solutions.
- Micro clouds over scalable kubernetes clusters and LXD clusters are a better solution. They should be built on top of a ubuntu server OS to reduce complexity.
- Ubuntu Core cannot be launched from lxc

## ub-server-22-micro-cloud

This approach wants to create a micro cloud enabling horizontal scalability using the following technologies:
- Ubuntu Server 22.04
- MicroK8s for microservices
- LXD for linux containers and VMs (qemu)

## ub-core-22-micro-cloud

This approach wants to create a micro cloud enabling horizontal scalability using the following technologies:
- Ubuntu Core 22
- MicroK8s for microservices
- LXD for linux containers and VMs (qemu)

## raspbian-based

This section works with Raspbian, the official Raspberry Pi OS, on top of which docker is installed to handle microservices.

