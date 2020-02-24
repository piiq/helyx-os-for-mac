# Get the base image file.
FROM ubuntu:xenial

# Mention Dockerfile maintainers
MAINTAINER pll_llq

# Set workdir for docker commands execution
WORKDIR /home/ofuser

# RUN groupadd -g ofuser
RUN useradd -ms /bin/bash ofuser

# # Install updates and relevant packages
# # Note that because the parent container has CentOS
# # yum is used instead of apt (aptitude)
RUN set -x && \
	apt-get -y update && \
	apt-get -y upgrade && \
	apt-get -y install software-properties-common && \
	apt-get -y install locales && \
	apt-get -y install wget bzip2 zip && \
	add-apt-repository ppa:openjdk-r/ppa  && \
	apt-get -y update && \
	apt-get -y install vtk6 libvtk6-java openjdk-7-jre openjdk-7-jdk libglu1-mesa libgl1-mesa-glx 

# Change folder permissions
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

# Download HELYX-OS installer and make it executable
# RUN wget https://github.com/ENGYS/HELYX-OS/releases/download/v2.4.0/HELYX-OS-2.4.0-linux-x86_64.tar.bz2
# RUN tar -xjf /home/ofuser/HELYX-OS-2.4.0-linux-x86_64.tar.bz2 --directory /home/ofuser/

# RUN cd Engys/HELYX-OS && \
# 	rm -rf jre && \
# 	ln -s /usr/lib/jvm/java-7-openjdk-amd64/jre jre && \
# 	cd v2.4.0 && \
# 	rm -rf ext/lib* && \
# 	cp -a /usr/lib/x86_64-linux-gnu/libvtk* ext/ && \
# 	cp -a /usr/lib/libvtk* ext/ && \
# 	rm lib/vtk6.jar && \
# 	mkdir lib/vtk6 && \
# 	cd lib/vtk6 && \
# 	unzip /usr/share/java/vtk6.jar && \
# 	sed -i \
# 	  -e 's=.*vtkParallelMPI4PyJava.*==' \
# 	  -e 's=.*vtkRenderingVolumeOpenGLNewJava.*==' \
# 	  -e 's=.*vtkRenderingExternalJava.*==' \
# 	  -e 's=.*vtkRenderingFreeTypeOpenGL2Java.*==' \
# 	  -e 's=.*vtkRenderingVolumeAMRJava.*==' \
# 	  -e 's=.*vtkRenderingContextOpenGL2Java.*==' \
# 	  -e 's=.*vtkRenderingVolumeOpenGL2Java.*==' \
# 	  -e 's=.*vtkRenderingOpenGL2Java.*==' \
# 	  -e 's=.*vtkDomainsChemistryOpenGL2Java.*==' \
# 	  -e 's=.*vtkIOADIOSJava.*==' \
# 	  -e 's=.*vtkFiltersPythonJava.*==' \
# 	  -e 's=.*vtkFiltersStatisticsGnuRJava.*==' \
# 	  -e 's=.*vtkAcceleratorsPistonJava.*==' \
# 	  -e 's=.*vtkAcceleratorsDaxJava.*==' \
# 	  -e 's=.*vtkInfovisParallelJava.*==' \
# 	  vtk/vtkNativeLibrary.java && \
# 	javac vtk/vtkNativeLibrary.java && \
# 	zip -r ../vtk6.jar *