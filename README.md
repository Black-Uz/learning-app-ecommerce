# Kubernetes E-Commerce Deployment Challenge

## Introduction

In this project, I deployed an e-commerce website using containerization with Docker and orchestration with Kubernetes (K8s). This challenge covers key aspects of modern web application deployment, ensuring my application is scalable, consistent, and highly available.

## Benefits of Containerization and Kubernetes

1. **Scalability**: Automatically adjust to fluctuating traffic.
2. **Consistency**: Ensure the application runs the same across all environments.
3. **Availability**: Update the application with zero downtime.

## Prerequisites

Before starting, I made sure to have:

- Docker and Kubernetes CLI tools.
- A cloud provider account (AWS, Azure, or GCP). Azure was used for this project
- A GitHub account.
- E-commerce application source code and database scripts from `kodekloudhub/learning-app-ecommerce`.

## Step-by-Step Summary

### Containerize the E-Commerce Website and Database

#### 1. Web Application
- I created a Dockerfile using `php:7.4-apache` as the base image. I built the Docker image and pushed it to Docker Hub. The web application is now containerized and available as a Docker image on Docker Hub, ready for deployment.

#### 2. Database
- Instead of building a database image from scratch, I opted for the official MariaDB image and prepared an initialization script. The database setup was straightforward, and I have a reliable MariaDB image ready to go.

### Set Up Kubernetes

#### 1. Cluster Creation
- I set up an Azure Kubernetes cluster and configured `kubectl` to manage it. With the cluster up and running, I'm ready to start deploying applications.

### Deploy the Website

#### 1. Kubernetes Deployment
- I created a deployment configuration file (`website-deployment.yaml`) and applied it using `kubectl`. The web application is now running on Kubernetes, with pods managed seamlessly.

#### 2. Expose the Website
- I defined a service (`website-service.yaml`) to expose the deployment to the internet. As a result the e-commerce site is now accessible via a public URL or IP address.

### Configuration Management

#### Feature Toggle
- I added a feature toggle for dark mode using a ConfigMap and updated the deployment to use it. The website now has a dark mode feature, demonstrating how easily I can manage application features with Kubernetes.

### Scale the Application

#### Scaling
- Simulating increased traffic via Apache Bench, I scaled up the number of replicas. The application effortlessly handled the increased load, owed to Kubernetes' powerful scaling capabilities.

### Perform a Rolling Update

#### Update and Monitor
- I updated the web application to include a promotional banner and monitored the rolling update process.

### Roll Back if Needed

#### Roll Back Deployment
- To simulate an update causing issues, I rolled back to the previous version. Rolling back was quick and efficient, restoring the application's stability almost instantly.

### Autoscale the Application

#### Horizontal Pod Autoscaler (HPA)
- I implemented HPA to automatically scale based on CPU usage. The number of pods dynamically adjusted to the load, maintaining optimal performance.

### Implement Liveness and Readiness Probes

#### Probes
- I added liveness and readiness probes to ensure the application remained responsive and only received traffic when fully ready. Kubernetes proactively managed pod health, restarting unresponsive pods and only routing traffic to ready ones.

### Use ConfigMaps and Secrets

#### Configuration Management
- I used Secrets for sensitive data like database credentials and ConfigMaps for non-sensitive configuration. This increased security by reducing risks from plaintext secrets.

## Conclusion

By completing this challenge, I have successfully deployed and managed a scalable, consistent, and resilient e-commerce application using Docker and Kubernetes. This experience has enhanced my understanding of modern DevOps practices and demonstrated my technical skills in containerization and orchestration.
