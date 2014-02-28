#!/bin/sh

useradd rpmbuilder
su - rpmbuilder
echo "timestamping = on" >.wgetrc
rpmdev-setuptree
echo '%_topdir %(echo $HOME)/rpmbuild' > ~/.rpmmacros
