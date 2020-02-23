# Acquiring installation files

This instruction goes through the steps that are required to prepare a new container deployment or update an existing one. This might be handy if you want to use another parent container or if there is an updated version of HELYS-OS that you want to install.

This procedure is pretty straight forward, but the user is expected to be comfortable with linux console and understand some basic docker functionality. 

The steps are:

1. Create container with preferred OS.
2. Install HELYS-OX manually inside the container.
3. Save installed files of HELYS-OX to the host system.
4. Modify existing Dockerfile and docker-compose file to use the updated HELYS-OX archive and parent container.