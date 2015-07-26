#/bin/bash

KVM_IMAGE=20bd977a-bf7a-4ee7-96d3-cadaf6a937fc
OSV_IMAGE=8b843e09-1b51-4c1a-930b-27cc9caa419c

NUM_INSTANCES=$1
BOOT_TYPE=$2

case "$2" in 

kvm) IMAGE=$KVM_IMAGE
;;
osv) IMAGE=$OSV_IMAGE 
;;
esac

source /opt/devstack/openrc demo demo
nova --profile SECRET_KEY boot --image $IMAGE --flavor 6 --num-instances $1 instancia

