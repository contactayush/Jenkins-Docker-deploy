# README

## Table of Contents

1. [Introduction](#introduction)
2. [Prerequisites](#prerequisites)
3. [Cloning the Repository](#cloning-the-repository)
4. [Building the Project](#building-the-project)
5. [Creating a WAR File](#creating-a-war-file)
6. [Building the Docker Image](#building-the-docker-image)
7. [Running the Docker Container](#running-the-docker-container)
8. [Continuous Integration with Jenkins](#continuous-integration-with-jenkins)
9. [Conclusion](#conclusion)

## Introduction

This project outlines the steps to clone a GitHub repository, compile the code using Maven, create a WAR file, build a Docker image, and deploy the application in a Docker container. Additionally, it describes how to automate the entire process using Jenkins for continuous integration and deployment.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

- Git
- Maven
- Docker
- Jenkins

## Cloning the Repository

To start, clone the GitHub repository containing the project code. Open your terminal and run:

```sh
https://github.com/contactayush/Jenkins-Docker-deploy.git
cd Jenkins-Docker-deploy
```

## Building the Project

Navigate to the project directory and compile the code using Maven:

```sh
mvn clean install
```

This command will compile the code and run any tests defined in the project.

## Creating a WAR File

After successfully compiling the code, Maven will generate a WAR file in the `target` directory. The WAR file is required for deploying the application in a web server or a Docker container.

## Building the Docker Image

Next, create a Docker image using the generated WAR file. Ensure you have a `Dockerfile` in the project directory. The `Dockerfile` provided in the repository will be used to build the Docker image.

Build the Docker image by running:

```sh
docker build -t your-app-image .
```

Replace `your-app-image` with a name for your Docker image.

## Running the Docker Container

Create and run a Docker container from the Docker image:

```sh
docker run -d -p 8080:8080 --name your-app-container your-app-image
```

Replace `your-app-container` with a name for your Docker container.

## Continuous Integration with Jenkins

Automate the entire process using Jenkins:

1. **Install Jenkins**: Follow the official Jenkins installation guide for your operating system.
2. **Create a New Job**: In Jenkins, create a new pipeline job.
3. **Configure Source Code Management**: Set up Git as the source code management tool and provide the repository URL.
4. **Define Build Steps**: Use the `Jenkinsfile` provided in the repository. The `Jenkinsfile` includes all the necessary steps to clone the repository, build the project, create the WAR file, build the Docker image, and run the Docker container.

5. **Run the Pipeline**: Save the pipeline and run the job. Jenkins will automate the process of cloning the repository, building the project, creating the WAR file, building the Docker image, and running the Docker container.

## Conclusion

By following these steps, you can clone a GitHub repository, compile the code using Maven, create a WAR file, build a Docker image, and deploy the application in a Docker container. Using Jenkins for continuous integration and deployment streamlines the process, ensuring efficient and automated project management.
