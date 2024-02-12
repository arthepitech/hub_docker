# Hub about Docker and Docker-Compose

## Table of contents

- [Before we start](#before-we-start)
- [Introduction](#introduction)
- [Setting up docker and docker compose](#setting-up-docker-and-docker-compose)
- [First steps in docker](lesson.md/#first-steps-in-docker)
- [First steps in docker compose](lesson.md/#first-steps-in-docker-compose)

## Before we start

!! Make sure you have an internet connection. !!

!! It is not recommended to install docker in a virtual machine (it may lack the virtualisation layer required for docker). !!

!! For apple users, please make sure you have installed the brew utility (package manager for apple that works in the command line) !!

It is recommended to have a second device (i.e. a phone) so that you can follow the tutorial in case you need to reboot your computer.

Instructions that are represented like `this` are generally case sensitive, it is preferable to respect the exact spelling.

## Introduction

Docker is a revolutionary platform that has transformed the way developers build, ship, and run applications.
Born out of the need for a more efficient and consistent way to deploy software, Docker has quickly become an indispensable tool in the world of software development and operations.

### What is Docker?

At its core, Docker is a containerization platform that enables developers to package their applications and dependencies into lightweight, portable containers.
These containers encapsulate everything an application needs to run, including code, runtime, libraries, and system tools, making it easy to deploy applications across different environments without worrying about compatibility issues.

### It's use in the industry

In the industry, Docker is widely used for various purposes, including:

- **Streamlined Development**: Developers can create reproducible development environments using Docker containers, ensuring consistency across different machines and minimizing the "it works on my machine" problem.

- **Continuous Integration/Continuous Deployment (CI/CD)**: Docker simplifies the process of building, testing, and deploying applications, making CI/CD pipelines more efficient and reliable.

- **Microservices Architecture**: Docker containers are ideal for implementing microservices-based architectures, enabling teams to break down monolithic applications into smaller, independently deployable services.

- **Scalability and Resource Efficiency**: Docker containers are lightweight and consume fewer resources compared to traditional virtual machines, making them well-suited for deploying and scaling applications in cloud environments.

### Creation Date and Origins

Docker was originally created by a team of students at Epitech, a leading French university specializing in computer science and information technology.
The project was officially launched in March 2013 by Solomon Hykes and his team, with the goal of simplifying the process of building, shipping, and running applications.

Since its inception, Docker has grown into a thriving open-source community with contributions from developers around the world.
Today, Docker is used by millions of developers and organizations across industries to accelerate software delivery and innovation.

## Setting up docker and docker compose

This section will help you get set up.

### Check if docker is installed

Please follow the section that corresponds to your machine, unfortunately, docker is (as of date) not supported on phones.

#### On Linux and Mac

Open your terminal and type:

```bash
sudo docker -v
```

You should see something like:

```txt
Docker version 25.0.2, build 29cf629
```

If you see something like:

```txt
docker : command not found
```

Please follow the installation steps bellow.

#### On Windows

Open your terminal and type:

```bash
docker -v
```

You should see something like:

```batch
Docker version 25.0.2, build 29cf629
```

If you see something like:

```txt
docker : command not found
```

Please follow the installation steps bellow.

### Installing docker

#### On windows

##### wsl

1. This part of the tutorial is following the instructions located at:

    [https://learn.microsoft.com/fr-fr/windows/wsl/install#install-wsl-command](https://learn.microsoft.com/fr-fr/windows/wsl/install#install-wsl-command)

2. Is wsl installed:

    On your powershell terminal, enter:

    ```ps1
    wsl --version
    ```

    You should see the following output:

    ```txt
    Version WSL : 2.X.X.X
    Version du noyau : X.XX.XXX.X-X
    Version WSLg : X.X.XX
    Version MSRDC : X.X.XXXX
    Version direct3D : X.XXX.X-XXXXXXXX
    Version de DXCore : 1X.X.XXXXX.XXXX-XXXXXX-XXXX.rs-onecore-base2-hyp
    Version de Windows : 1X.X.XXXXX.XXXX
    ```

    If you don't, then head to `3. installing wsl`

    If you see `Version WSL : 1.X.X.X`, this means  that wsl is already installed but needs to be upgraded.
    Go to step `4. upgrading wsl`

    If you see  `Version WSL : 2.X.X.X`, this means  that wsl is already installed and working properly.
    Go to step `5. Installing docker`

3. Installing wsl

    Open the powershell with administator rights.
    Enter:

    ```ps1
    wsl --install
    ```

    You should get a window that will ask you if you allow a program to run, choose `yes`, it is the wsl binary.

    You should see the output:

    ```txt
    Installing: Windows Subsystem for Linux
    Windows Subsystem for Linux has been installed.
    Installing: Ubuntu
    Ubuntu has been installed.
    The resquested operation is successful. Changes will not be effective until the system is rebooted.
    ```

    It is recommended that you restart your computer in order to allow wsl to fully install itself.

    After the reboot, it is normal to see a black window saying that ubuntu is installing. It is the base system that is used by wsl, do not close it until it has finished !

    If you did not get the expected output, try to look online for solutions for your error, or ask us for help.

4. Upgrading wsl

    To check if wsl is correctly installed, you can run a `wsl --version` command.
    This will allow you to check if wsl version `2` has been installed by looking at:

    ```txt
    Version WSL : 2.X.X.X
    ```

    If the version is not equal to `2`, then, please follow this step:
    In you administrator powershell, enter:

    ```ps1
    wsl --set-default-version 2
    ```

    You should see the following output:

    ```txt
    For information on key differences with WSL 2 please visit https://aka.ms/wsl2
    The operation completed successfully
    ```

    If this is the case, please `reboot` your system and then proceed to the next point `5. Installing Docker`.
    If it's still showing an older version, you may need to uninstall and re-install it.

5. Installing Docker

    Go to : [https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/) and download the windows binary.

    Once the binary has downloaded, locate it and run it.

    Follow the standard installation method.

    Once docker has asked you to log out and back in.

    Start docker (by clicking on it's icon).

    Connect or create an account.

    Open the command prompt.

    You can check if it is installed by running the command:

    ```batch
    docker run hello-world
    ```

    You should see the following output:

    ```txt
    Unable to find image 'hello-world:latest' locally

    latest: Pulling from library/hello-world
    c1ec31eb5944: Pull complete
    Digest: sha256:4bd78111b6914a99dbc560e6a20eab57ff6655aea4a80c50b0c5491968cbc2e6
    Status: Downloaded newer image for hello-world:latest

    Hello from Docker!
    This message shows that your installation appears to be working correctly.

    To generate this message, Docker took the following steps:

    1. The Docker client contacted the Docker daemon.
    2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
        (amd64)
    3. The Docker daemon created a new container from that image which runs the
        executable that produces the output you are currently reading.
    4. The Docker daemon streamed that output to the Docker client, which sent it
        to your terminal.

    To try something more ambitious, you can run an Ubuntu container with:
    $ docker run -it ubuntu bash

    Share images, automate workflows, and more with a free Docker ID:
    <https://hub.docker.com/>

    For more examples and ideas, visit:
    <https://docs.docker.com/get-started/>
    ```

#### On mac

Go to : [https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/)

Download the version that corresponds to your processor architecture (intel or M1, M2, M3, etc)

Install the software like any apple software

<!-- Once this is done, open a terminal

In this terminal we are going to install the docker-cli utilities, these are essential if you wish to be able to follow this tutorial like it was meant to be done.

In your terminal, enter:
```bash
brew install docker-cli
```
-->

To see if docker is properly installed:

Open the docker application

Wait for it to start up

Log into your docker account via the application

Open a terminal

run  `docker version` in the terminal

you should see something like that:

```bash
Client:
 Cloud integration: vX.X.XX
 Version:           XX.X.XXXX
 API version:       X.XX
 Go version:        goX.XX.X
 Git commit:        XXXXX
 Built:             XXX XXX XX XX:XX:XX 20XX
 OS/Arch:           darwin/XXXXX
 Context:           desktop-linux

Server: Docker Desktop X.XX.X (XXXXXX)
 Engine:
  Version:          XX.X.XXXX
  API version:      X.XX (minimum of X.XX)
  Go version:       goX.XX.X
  Git commit:       XXXXXXX
  Built:            Tue XX XX:XX:XX UTC 20XX
  OS/Arch:          linux/XXXXX
  Experimental:     false
 containerd:
  Version:          X.XX.X
  GitCommit:        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 runc:
  Version:          X.XX.X
  GitCommit:        vX.X.X-X-XXXXXXXX
 docker-init:
  Version:          X.XX.X
  GitCommit:        XXXXXXX
```

If you see this, this means that docker is successfully installed.

You can now run:

```bash
docker run hello-world
```

You should see the following output:

```txt
Unable to find image 'hello-world:latest' locally

latest: Pulling from library/hello-world
c1ec31eb5944: Pull complete
Digest: sha256:4bd78111b6914a99dbc560e6a20eab57ff6655aea4a80c50b0c5491968cbc2e6
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:

1. The Docker client contacted the Docker daemon.
2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
$ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
<https://hub.docker.com/>

For more examples and ideas, visit:
<https://docs.docker.com/get-started/>
```

This is proof that docker is correctly installed on your system.

#### On linux

Go to : [https://docs.docker.com/engine/install/](https://docs.docker.com/engine/install/)
and follow the instructions that are suited for your system.

Afterwards, go to : [https://docs.docker.com/compose/install/linux/#install-using-the-repository](https://docs.docker.com/compose/install/linux/#install-using-the-repository)
and follow the instructions that are suited for your system.

Once everything is installed, you can proceed with the rest of the tutorial.
