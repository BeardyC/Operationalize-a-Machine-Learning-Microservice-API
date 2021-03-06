[![CircleCI](https://circleci.com/gh/BeardyC/Operationalize-a-Machine-Learning-Microservice-API.svg?style=svg)](https://circleci.com/gh/BeardyC/Operationalize-a-Machine-Learning-Microservice-API)




# Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.

## Project Tasks

Your project goal is to operationalize this working, machine learning microservice using  [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:

-   Test your project code using linting
-   Complete a Dockerfile to containerize this application
-   Deploy your containerized application using Docker and make a prediction
-   Improve the log statements in the source code for this application
-   Configure Kubernetes and create a Kubernetes cluster
-   Deploy a container using Kubernetes and make a prediction


## Getting started

### Setting up environment 

#### Create and source a new virtualenv

Run the following
```
python3 -m venv <new_py_env>
source <new_py_env>/bin/activate
```
Alternatively run ```make setup``` which will create a venv at ```~/.devops```.

### Install deps

```make install```

### Containerising & deploying using Docker

Running ```run_docker.sh``` will package the app and run the docker image locally. You'll be able to hit it locally on port 8080.

To hit the endpoing a precanned request can be made by running ```make_prediction.sh```

You can upload to your own repo by editing the ```upload_docker.sh``` script to point are your own repo and running it.

### Running under k8s
```run_kubernertes.sh``` will deploy the container in a new namespace ,```mlapi``` , and procede to create a new deployment with the image provided. 
Once the deployment is up and ready it will portfword local port 8080 to the pods vnet on port 80.

To hit the endpoing a precanned request can be made by running ```make_prediction.sh```
