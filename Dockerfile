# Get the base image file.
FROM --platform=linux/amd64 ubuntu:xenial

# Set workdir for docker commands execution
WORKDIR /home/ofuser

# RUN groupadd -g ofuser
RUN useradd -ms /bin/bash ofuser

# Install updates and relevant packages
RUN set -x && \
    apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install software-properties-common && \
    apt-get -y install locales && \
    apt-get -y install apt-transport-https && \
    apt-get -y install wget bzip2 zip

# Install OpenFOAM 4.1
RUN add-apt-repository http://dl.openfoam.org/ubuntu && \
    sh -c "wget -O - http://dl.openfoam.org/gpg.key | apt-key add -" && \
    apt-get update && \
    apt-get -y install openfoam4

# install packages that make HELYX-OS work
RUN add-apt-repository ppa:openjdk-r/ppa  && \
    apt-get -y update && \
    apt-get -y install vtk6 libvtk6-java openjdk-8-jre openjdk-8-jdk libglu1-mesa libgl1-mesa-glx

# Create and change folder permissions
RUN mkdir /home/ofuser/Engys && \
    chown -R ofuser:ofuser /home/ofuser && \
    cd /home/ofuser

# Set the locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# change user for further actions
USER ofuser

# Add OpenFOAM 4.1 to local user path
RUN echo ". /opt/openfoam4/etc/bashrc" > .bashrc

# Download and unpack HELYX-OS 2.4 distribution
RUN wget https://github.com/piiq/helyx-os-for-mac/releases/download/0.2.0/HELYX-OS-2.4.0-linux-x86_64.tar.bz2
RUN tar -xjf /home/ofuser/HELYX-OS-2.4.0-linux-x86_64.tar.bz2 --directory /home/ofuser/
