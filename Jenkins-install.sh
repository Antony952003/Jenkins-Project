#!/bin/bash

# Install Java 17 on the Master Node since Jenkins requires Java to run

sudo apt update

sudo apt install openjdk-17-jre

# Add the Jenkins repository to the system

curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null


sudo apt-get update

sudo apt-get install jenkins

# Download Docker in the Master Node

sudo apt update

sudo apt install docker.io


# Add Jenkins and Ubuntu user to the Docker group since Jenkins needs to run Docker commands
sudo su - 

usermod -aG docker jenkins

usermod -aG docker ubuntu

systemctl restart docker