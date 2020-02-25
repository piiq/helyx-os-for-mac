# HELYX-OS container for OSX

[![HELYX-OS on Mac](https://raw.githubusercontent.com/piiq/helyx-os-for-mac/master/docs/helyx-os-on-mac.jpg)](https://raw.githubusercontent.com/piiq/helyx-os-for-mac/master/docs/helyx-os-on-mac.jpg)

A container that bundles HELYX-OS v2.4.0 and OpenFOAM 4.1 to be used on OSX via X11.

## Getting Started

[HELYX-OS](http://engys.com/products/helyx-os) is an open-source, powerful and user friendly GUI for OpenFOAM® CFD engine. HELYX-OS is developed and maintained by [ENGYS](http://engys.com/)

As of now (Feb 2020) precompiled binaries for HELYX-OS are only available for Linux users. Luckily Mac users can leverage X11 to work with HELYX-OS from a Linux container. These instructions will get you up and running on your local machine.

### Prerequisites

What things you need to install the software and how to install them


- `Git` - if you don't have git installed, here's a good tutorial that lists several ways to get Git for OSX https://www.atlassian.com/git/tutorials/install-git
- `Docker` - get docker from https://docs.docker.com/docker-for-mac/install
- `x11` - get X11 from https://www.xquartz.org/


### Installing
**Clone the repository**

```bash
git clone git@github.com:piiq/helyx-os-for-mac.git
```

**Share folder with Docker engine**

⚠️ Before you do your the first launch of the container you should make the `workDir` folder accessible to Docker.

```
├── helyx-os-for-mac
    ├── Dockerfile
    ├── LICENSE
    ├── README.md
    ├── app-run-shell.sh
    ├── app-run.sh
    ├── app-stop.sh
    ├── docker-compose.yml
    └── workDir <- make this folder available for Docker
```

In order to make a folder available for Docker go to Docker Preferences -> Resources -> FILE SHARING and add the mentioned forder.

[![Docker file sharing](https://raw.githubusercontent.com/piiq/helyx-os-for-mac/master/docs/docker-file-sharing.jpg)](https://raw.githubusercontent.com/piiq/helyx-os-for-mac/master/docs/docker-file-sharing.jpg)

⚠️ The `workDir` folder is your default shared folder for this container. If you want any files to be accessible inside the container - place them into `workDir`. 

## Running the application

Fire up containers and HELYX-OS GUI. Run the `run.sh` script

```bash
./app-run.sh
```

After you are done working with the app - stop the contaiters. Run the `stop.sh` script

```bash
./app-stop.sh
```

If you want to access the interactive console inside the container - run the `app-run-shell.sh` script

## Acknowledgments and licenses

* The script files created for this project are licensed under the DO WHATEVER YOU WANT TO PUBLIC LICENSE - see the [LICENSE.md](LICENSE.md) file for details.
* HELYX-OS, OpenFOAM, Docker and supporing tools are owned and licensed by their respective authors and owners.

## Disclaimers
This project is not approved or endorsed by neither [OpenCFD Limited](https://www.openfoam.com) nor [Engys](http://engys.com/)
