FROM blalor/centos

ADD . /tmp/build

# References used
# http://wiki.centos.org/HowTos/SetupRpmBuildEnvironment


# Packaging tools
RUN yum -y install @development-tools rpm-build redhat-rpm-config rpmdevtools

# Deps
RUN yum -y install bluez-libs-devel

# Set up RPM builder
RUN /tmp/build/setup-env.sh
