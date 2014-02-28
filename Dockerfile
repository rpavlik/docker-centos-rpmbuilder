FROM centos

ADD . /tmp/build

# References used
# http://lists.centos.org/pipermail/centos/2012-September/129227.html
# http://wiki.centos.org/HowTos/SetupRpmBuildEnvironment


# Packaging tools
RUN yum -y install @development-tools rpm-build redhat-rpm-config rpmdevtools

# Set up RPM builder
RUN useradd rpmbuilder
RUN /bin/su -c "/tmp/build/setup-env.sh" rpmbuilder
