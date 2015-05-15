#!/bin/sh -xe
sudo apt-get update
sudo apt-get install -y git
[ -d devstack ] || git clone -b stable/icehouse git://git.openstack.org/openstack-dev/devstack
cp /vagrant/localrc devstack
(cd devstack ; ./stack.sh)
