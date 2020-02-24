# Get the base image file.
FROM openfoamplus/of_v1606plus_centos66

# Mention Dockerfile maintainers
MAINTAINER pll_llq

# Set workdir for docker commands execution
WORKDIR /home/ofuser/workingDir

# Install updates and relevant packages
# Note that because the parent container has CentOS
# yum is used instead of apt (aptitude)
RUN set -x && \
    yum -y update && \
    yum -y upgrade && \
    yum -y install wget && \
    yum -y install bzip2


# Download HELYX-OS installer and make it executable
RUN	wget https://github.com/ENGYS/HELYX-OS/releases/download/v2.4.0/HELYX-OS-2.4.0-linux-x86_64.bin && \
	chmod 755 ./HELYX-OS-2.4.0-linux-x86_64.bin

# Change folder permissions
RUN mkdir /home/ofuser/Engys && \
	chown -R ofuser:ofuser /home/ofuser && \
	cd /home/ofuser
