#!/bin/sh

set -e

cd ~
echo "timestamping = on" >.wgetrc
rpmdev-setuptree
echo '%_topdir %(echo $HOME)/rpmbuild' > ~/.rpmmacros
