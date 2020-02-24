# Get the base image file.
FROM openfoamplus/of_v1606plus_centos66

# Mention Dockerfile maintainers
MAINTAINER pll_llq et al.

# Set workdir for docker commands execution
WORKDIR /home/ofuser

# Install updates and relevant packages
# Note that because the parent container has CentOS
# yum is used instead of apt (aptitude)
RUN set -x && \
	yum -y update && \
	yum -y upgrade && \
	yum -y install wget
	# 
	# yum -y install vtk6 && \
	# yum -y install libvtk6-java && \
	# yum -y install openjdk-8-jre && \
	# yum -y install openjdk-8-jdk && \
	# yum -y install libglu1-mesa

# Set up env variables for ParaFoam execution
RUN echo 'export LD_LIBRARY_PATH=$WM_THIRD_PARTY_DIR/platforms/linux64Gcc/qt-4.8.5/lib:$LD_LIBRARY_PATH' >> /home/ofuser/.setting && \
	echo 'export DOCKER_OPENFOAM_PATH="/opt/OpenFOAM/OpenFOAM-v1606+/etc/bashrc"' >> /home/ofuser/.setting

# Prepare folder structure and download helyx-os
RUN wget https://github.com/piiq/helyx-os-for-mac/releases/download/0.1.0/helyx-os-2.4.0-centos66.tar.gz
# Unpack helyx-os and change folder permissions
RUN	cd /home/ofuser && tar -xzf helyx-os-2.4.0-centos66.tar.gz --directory . && \
	chown -R ofuser:ofuser /home/ofuser
# Cleanup the archive
RUN	rm /home/ofuser/helyx-os-2.4.0-centos66.tar.gz

# RUN ln -s /opt/OpenFOAM/OpenFOAM-v1606+/* /opt/OpenFOAM
