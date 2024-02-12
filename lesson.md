# Hub about Docker and Docker-Compose

## Table of contents

- [Before we start](#before-we-start)
- [Introduction](#introduction)
- [Setting up docker and docker compose](#setting-up-docker-and-docker-compose)
- [First steps in docker](#first-steps-in-docker)
- [First steps in docker compose](#first-steps-in-docker-compose)

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

Once everything is installed, you can proceed with the rest of the tutorial

## First steps in docker

### Basic terminology

1. **Image**: This terms refers to the base of what docker relies to deploy `containers`.  Images are like templates or blueprints that contain everything needed to create and start a container.

2. **Containers**: It refers to the product of running an image. Containers are like lightweight VMs since they bundle up all dependencies needed by an application along with the code itself.

3. **Networks**: This refers to sub nets within a virtual network. Containers attached to these networks will have access to each other.

### The basic commands

Here is a basic list of commonly used docker commands and what they generally do

> Note that all commands are prefixed by :
>
>if on windows: `docker`
>
>if on  Linux or MacOS: `sudo docker`

| The Command     | The Options               | Action                                       |
|-----------------|---------------------------|----------------------------------------------|
| build           |                           | Used to build an image that can later be used in a container |
|                 | -t name                   | Assign a name to the build                   |
| pull            | <image_name>              | Used to get docker images from the hub       |
| run             |                           | Used to create a container                   |
|                 | -i                        | Used to spin up containers and keep them alive |
|                 | -t                        | Used to spin up containers and attach a terminal to the container |
|                 | -d                        | Used to spin up containers and let it run in the background |
|                 | --name                    | Used to spin up containers and assign a name to it |
|                 | -v                        | Used to spin up containers and link a folder from your computer to a folder in the container |
|                 | -p                        | Used to spin up containers and assing a port to it remove unused data |
|                 | -f                        | Force remove unused data                     |
| system prune    |                           | (Be careful) Remove all unused data: containers, images, networks |
|                 | -f                        | (Be careful) Remove all unused data: containers, images, networks |
| container prune |                           | Remove all unused containers                 |
|                 | -f                        | Force remove all unused containers           |
| image prune     |                           | Remove all unused images                     |
|                 | -f                        | Force remove all unused images               |
| ps              |                           | Shows running containers                     |
|                 | -a                        | Shows all containers                         |
| rm              |                           | Remove  one or more containers.              |
|                 | -f                        | Force removal of a running container.        |
| exec            |                           | Command used to connect your terminal to the container's |
|                 | -i                        | Command used to connect your terminal to the container's but use the hosts settings on the containers. This option also allows you to interract directly with the container, you don't need to run a docker command everytime you wish to interract with the system running inside the container. |
|                 | -t                        | Command used to connect your terminal to the container's but use the container's settings on the containers. |
|                 | -it                       | You get the benefits of both, interraction with the container but keep the containers settings. |
| container       |                           | Command specifically intended for interracting with the container |
|                 | start                     | Start a container                            |
|                 | restart                   | Restart a container                          |
|                 | rename                    | Rename a container                           |
|                 | stop                      | Stop a running container                     |
|                 | rm                        | Remove  one or more containers.              |
|                 | rm -f                     | Force removal of a running container.        |
| image           |                           | Command in charge of managing docker images  |
|                 | list                      | List all docker images                       |
|                 | prune                     | Remove all unused images                     |
|                 | prune -f                  | Force remove all unused images               |
|                 | pull                      | Pull an image from the hub                   |
|                 | push                      | Push an image to the hub                     |

### The aim of this section

In this section you will learn how to use the docker command line to deploy containers from images you have built.

It is an important section to understand because the commands used here are fairly usefull accross the board.

We hope that by the end of this section you will be more at ease with parts of the docker command line interface.

### Step 1 : Building our first Docker Image

This section is here to help you understand the importans of dockerfiles.
*PS: A Dockerfile is a text document that contains all the instructions needed by Docker to assemble an image.*

Docker is very rigid on the name of this file, it's name has to be `Dockerfile` and that name is case insensitive but no other name will work for this file.

Thus, if you need many dockerfiles, you need to create a folder for each file.

But before we go there, let's take a look at what a `Dockerfile` looks like:

```Dockerfile
FROM ubuntu:latest

MAINTAINER support@example.com

LABEL "author"="EXAMPLE Maintainer"
LABEL "Date"="2020-09-29"

ENV DEBIAN_FRONTEND noninteractive
ENV LOCATION docker
ENV REQUIREMENT_NAME requirements.txt

RUN apt-get update
RUN apt-get install -y python3 \
                       python3-pip

COPY . /app
WORKDIR /app

RUN pip3 install -r ${REQUIREMENT_NAME}
# RUN pip3 install -r requirements.dev.txt

EXPOSE 5000
EXPOSE 300-3100
EXPOSE 80, 443

CMD ["python", "./my_script.py"]
```

#### What is happening here?

Let's break this file down little by little:

In the first line we specify the base image we wish to use (here `ubuntu`), we also specify the tag of the image (here it is `latest` but it could also be `rolling` or `24.04` check the image's repository's tag section for more options).

```Dockerfile
FROM ubuntu:latest
```

This section is metadata about who is the person maintaining the image as well as how to contact them.

```Dockerfile
MAINTAINER support@example.com
```

This section is more metadata, it is another way of providing information about the image such as the name of the author or the date it was created.

```Dockerfile
LABEL "author"="EXAMPLE Maintainer"
LABEL "Date"="2020-09-29"
```

This section is where you can set environement variables in your image.

In our case, we have informed python that we do not have a graphical interface using `DEBIAN_FRONTEND`.

We have also created a `LOCATION` variable to alow us to know when we are in the container or not.

And Lastly we have created a `REQUIREMENT_NAME` variable so that we can update the name of the requirements for the program that will be running in the container.

```Dockerfile
ENV DEBIAN_FRONTEND noninteractive
ENV LOCATION docker
ENV REQUIREMENT_NAME requirements.txt
```

In this section we are running commands in the docker container at build time.
The `RUN` keyword means that these command will be executed during the build process of our image.

```Dockerfile
RUN apt-get update
RUN apt-get install -y python3 \
                       python3-pip
```

This line will copy everything that is located in the directory we are building from and put it in a folder named `app` at the root of the container.

```Dockerfile
COPY . /app
```

This line changes the default landing folder.

When you enter a container (i.e. by using docker exec) the default location (if it has not been overriden) is `/` but this line will change it to `/app`.

```Dockerfile
WORKDIR /app
```

In this section we are running a command during the build time, but this time around, we have called a variable we had set in the environement before hand to help fill part of the command.

```Dockerfile
RUN pip3 install -r ${REQUIREMENT_NAME}
```

This is a way to add information to any other maintainers that would wish to contribute to your file, you guessed it, it is a comment.

```Dockerfile
# RUN pip3 install -r requirements.dev.txt
```

This line will inform the build that a port (or range of ports) need to be made available to the host  system, so it can access them from outside the Docker container.

The `-p` option is used to accomplish that task.

```Dockerfile
EXPOSE 5000
EXPOSE 300-3100
EXPOSE 80, 443
```

This last line specifies the default command that needs to be run on startup.

In this case it's a Flask application.

```Dockerfile
CMD ["python", "./my_script.py"]
```

### Creating the projects architecture

Now that you have seen a basic structure of a Dockerfile, why don't you try to create a Dockerfile on your own.

Here are a few steps for this project:

1. Create a folder named `full_stack`
2. In that folder create 3 folders:
    - `client`
    - `database`
    - `server`
3. In the `database` folder you will create a file named `Dockerfile` and a folder name `my_data` and a folder named `my_cache`
4. In `client` create the `my_client` folder, this will hold the content of the client side (we provided the code)
5. In `server` create the `my_server` folder, this will hold the content of the server side (we provided the code)
6. In the `full_stack` folder you will create a `docker-compose.yaml` file

This is it (for the moment) for the architecture of the project, it is now time for the fun part, dockerfiles.

### Creating your first dockerfile

Let's start with the simplest one, the server.

Here are the requirements for the  `server/Dockerfile`:

- `node:latest`
- port `5000` needs to be exposed
- All the `server` files will need to be located in `/server`
- You will need to run the command  `npm install` to install the dependencies located in the files.
- You will also need to set the default entry command to `npm start`.

### Testing the server docker

You can test if everything is working correctly by running:

```bash
sudo docker build --tag=local/my_server .
sudo docker run -p 5000:5000 -d -it --name my_server local/my_server
```

To stop it you can use:

```bash
sudo docker container stop my_server
sudo docker container rm my_server
```

If you also want to remove the image, you can run:

```bash
sudo docker image rm my_server
```

To check that everything has properly been removed you can run:

```bash
sudo docker ps -a
sudo docker image list
```

### Creating the client dockerfile

Let's step up the complexity, the client side (the part that a user will see).

The `client/Dockerfile` is going to require:

- `node:latest`
- port `80` to `90`, `443`, `8080` to `8090` need to be exposed
- All the server files will need to be located in `/front`
- You will need to run the command  `npm install` to install the dependencies located in the files.
- You will need to run the command  `npm build` to build the project.
- You will need to run the command  `npm test` to build the project.
- You will also need to set the default entry command to `npm start`.

### Testing the client docker

You can test if everything is working correctly by running:

```bash
sudo docker build --tag=local/my_client .
sudo docker run -p 80:8080 -d -it --name my_client local/my_client
```

To stop it you can use:

```bash
sudo docker container stop my_client
sudo docker container rm my_client
```

If you also want to remove the image, you can run:

```bash
sudo docker image rm my_client
```

To check that everything has properly been removed you can run:

```bash
sudo docker ps -a
sudo docker image list
```

### Deploying a database

Wouldn't it be good if we could have a form of permanent storage?

Well, that's when databases come into play!

To deploy one for our application, we are going to use MariaDB as it's a very common SQL database.

The first step in deploying a database is to create the sql file that will hold the base data.

Start by creating a `data.sql` in the `my_data` folder.

This file is provided in the `full_stack` folder that was provided with this file.

You are now set to start creating the `database/dockerfile`

The requirements for the `database/dockerfile` are:

- `mariadb:latest`
- port `3307` need to be exposed
- The `my_data/data.sql` file needs to be located in `/docker-entrypoint-initdb.d/` so that it gets executed during the initialization of the DBMS (so it can be accessed from outside the Docker network)

### Testing the database docker

You can test if everything is working correctly by running:

if on Linux or Mac:

```bash
sudo docker build --tag=local/my_database .
sudo docker run -p 3307:3306 -v "$(pwd)/my_cache":"/var/lib/mysql" -d -it --name my_database local/my_database
```

if on Windows:

```bash
docker build --tag=local/my_database .
docker run -p 3307:3306 -v "%cd%/my_cache":"/var/lib/mysql" --env MYSQL_ROOT_PASSWORD=root --env MYSQL_DATABASE=my_database --env MYSQL_USER=lumine --env MYSQL_PASSWORD=lumine -d -it --name my_database local/my_database
```

To stop it you can use:

```bash
sudo docker container stop my_database
sudo docker container rm my_database
```

If you also want to remove the image, you can run:

```bash
sudo docker image rm my_database
```

To check that everything has properly been removed you can run:

```bash
sudo docker ps -a
sudo docker image list
```

## First steps in docker compose

Now that you have a dockerfile for the backend, the frontend and your database, you might not want to have to use three different commands to start them all up. Why not just use one? Well, in this section we are going to see exactly how we can do that with docker-compose.

But you are going to tell me, is docker-compose meant to only start our containers in a single command ? Well, no.\
With docker-compose, you can directly connect your backend with the database ! That's way more interesting for you. However, if you want to know what docker-compose is really capable of, you can take a look at the documentation about it.

### Step 1

First things first, you are going to do the services for your backend and your frontend. Remember, back and front do not have the same Dockerfile

So, what should you find in them?

Here are the requirements for both services:\

- a way to build your Dockerfile with the path to your Dockerfile and you must precise that it is a Dockerfile because compose and docker are not the same !
- create the `server` and `client` services
- add a name to your container: `my_client` for the front, `my_server` for the back.
- call the corresponding Dockerfile you use for the section, this means you will have to use `my_server_image`for the back and `my_client_image` for the front.
- each service in the docker-compose should only run if the previous one has succeeded.
- for the server and front, no environement needs to be managed within the docker-compose.
- you will need to manage port forwarding for both services: `80`for the front (watch out, the program speaks on port `8080`, thus you will need to find a way to redirect the traffic on port `80` to port `8080`), `5000` for the back
- if you wish to be able to edit the code without having to re-deploy the docker-compose everytime, feel free to mount the content of each code via volumes (PS: this will render the copy action of the docker file useless, but hey)
- for both services, set the reastart to `always`

### Step 2

Now we need a database for our backend, don't you think so ? Otherwise, how can you store the informations the users will provide on your website.

To do so:

- create a service called `database` above the `server` service.
- call the corresponding Dockerfile you use for the section, this means you will have to use the name `my_database_image` for the back.
- each service in the docker-compose should only run if the previous one has succeeded, this means, that `server` now depends on `database`.
- for this service, set the restart to `always`
- for this service, you will need to set the following `environement` variables:
  - `MYSQL_ROOT_PASSWORD` to `root`
  - `MYSQL_DATABASE` to `my_database`
  - `MYSQL_USER` to `lumine`
  - `MYSQL_PASSWORD` to `lumine`
- the database should be exposed on port `3307`
- mount the `my_cache` folder to the `/var/lib/mysql` folder to create a persistent cache.

### Step 3

You are going to learn what are `networks`.

If you don't know what they are, we suggest that you `RTFM` (Read the manual) that link : [https://docs.docker.com/compose/networking/](https://docs.docker.com/compose/networking/)

An easier way to understand `networks`, is to think of `docker-compose` as if it was a miniature computer. That `computer` can create containers that each speak on a different network interface.
The problem is that sometimes, you need one (or more) container(s) to be able to access ressources contained in another container.
This is where `networks` come in.
They are services that allow to ease the access to the ressources of a container by letting others connect to it via it's `name`, (hence one of the reason why we provided the names of the services during their creation).
This means that if you need to access that container's ressources you just need to call it by it's service name.

### Step 4

You are almost at the end !

Let's recap, you have a compose for the frontend, the backend, networks and the database. So, what is missing ? Of course, more volumes !

In these volumes you should have:

- the name of the database
- the name of the backend
- the name of the frontend
