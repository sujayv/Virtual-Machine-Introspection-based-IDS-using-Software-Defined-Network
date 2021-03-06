#!/bin/bash
virt-install \
             --connect qemu:///system \
             --virt-type kvm \
             --name Ubuntu \
             --ram 1024 \
             --disk path=/home/sujay/Downloads/ubuntu.qcow2,bus=virtio,device=disk,format=qcow2 \
             --graphics type=vnc,listen=0.0.0.0 \
             --vcpus=2 --cpu host \
             --network bridge=virbr0,mac=CA:FE:BA:BE:42:43,model=virtio \
             --os-variant debian \
             --accelerate \
             --boot hd
