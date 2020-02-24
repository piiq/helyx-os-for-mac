# HELYX-OS container for OSX

Use HELYX-OS from of an OpenFOAM® container via X11.

## Getting Started

[HELYX-OS](http://engys.com/products/helyx-os) is an open-source, powerful and user friendly GUI for OpenFOAM® CFD engine. HELYX-OS is developed and maintained by [ENGYS](http://engys.com/):

> HELYX-OS is an open-source Graphical User Interface designed to work natively with OpenFOAM version 4.1 and OpenFOAM v1606+. The GUI is developed  by ENGYS using Java+VTK and delivered to the public under the  GNU General Public License.
 
> HELYX-OS has been created to facilitate the usage of the standard OpenFOAM libraries, by removing the complexity of text based case definition in favour of an intuitive easy-to-use graphical user interface. The GUI is focused on pre-processing tasks, including meshing, case definition and solver execution.  Visit the HELYX-OS Project Page (http://engys.github.io/HELYX-OS/) for more information.

As of now (Feb 2020) precompiled binaries for HELYX-OS are only available for Linux users. Luckily Mac users can leverage X11 to work with HELYX-OS from a Linux container using X11. These instructions will get you up and running on your local machine.

### Prerequisites

What things you need to install the software and how to install them


- `Git` - if you don't have git installed, here's a good tutorial that lists several ways to get Git for OSX https://www.atlassian.com/git/tutorials/install-git
- `Docker` - get docker from https://docs.docker.com/docker-for-mac/install
- `x11` - get X11 from https://www.xquartz.org/


### Installing
Clone the repository

```bash
git clone git@github.com:piiq/helyx-os-for-mac.git
```

## Running the application

Fire up containers and HELYX-OS by running the `run.sh` script

```bash
./run.sh
```

After you are done working with the app stop the contaiters by running the `stop.sh` script

```bash
./stop.sh
```
## Acknowledgments and licenses

* The scipt files created for this project are licensed under the DO WHATEVER YOU WANT TO PUBLIC LICENSE - see the [LICENSE.md](LICENSE.md) file for details.
* HELYX-OS, OpenFOAM, Docker and supporing tools are owned and licensed by their respective authors and owners.

## Disclaimers
This project is not approved or endorsed by neither [OpenCFD Limited](https://www.openfoam.com) nor [Engys](http://engys.com/)
