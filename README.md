# k8s-multi-fibonacci

A react/express application that calculates the fibonacci number at a certain value. Uses kubernetes to containerize multiple services(postgres, redis, react) and deploy.

## Technology Used
- React
- Node
- Google Cloud Provider (Google Kubernetes Engine)
- Kubernetes
- Docker
- Postgres
- Redis
- NGINX
- Travis CI

## Features
- Calculating fibonacci numbers at a certain value
- Cacheing numbers inputted using Redis
- Storing calculation values using Postgres

## Purpose
This project taught me how use Kubernetes to orchestrate the Docker files created from the docker-fibonacci version of the project. I learned a lot about many technologies and how they interact. Some things I learned include:
- Kubernetes commands using Docker Destop
- Continous Integration using Travis CI
- Creating dockerfiles for production and staging environments
- Sending secrets to Kubernetes
- Sending secrets to Travis CI
- Deploying to GCP
- Versioning dockerfiles and uploading to DockerHub
- Setting up NGINX as a load balancer
- Setting up Services in Kubernetes
- Deployments in Kubernetes
- Using LetsEncrypt for https
- Using Kubernete's ingress-nginx as a load balancer
- Configuring postgres
- Setting up a dashboard for kubernetes resource monitoring

Dockerhub: https://hub.docker.com/u/jbdiop

Original: https://github.com/YourEpicness/docker-fibonacci
