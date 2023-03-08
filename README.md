# Hello World 

SRE interview assignment for Cointracker

## Overview

Simple Python/Flask "Hello World" app 
Built using Docker and pushed to Google Container Registry
Terraform config to create Cloud Run and Cloud Build resources in GCP which deploy the app and enable CI/CD

## Local Usage

```bash
docker build -t helloworld:latest . 
docker run -d -p 5000:5000 hello-world:latest
```

## Pushing to Google Container Registry

```bash
docker tag helloworld:latest gcr.io/cointracker-379915/helloworld:latest
docker push gcr.io/cointracker-379915/helloworld:latest
```


## Terraform Usage

```bash
cd tf
terraform init
terraform apply
```


## CI/CD Pipeline

Commits to the main branch will trigger a Cloud Build job that will build the container and deploy it to Cloud Run


## Cloud Run URL
[Hello World Flask app hosted in Google Cloud Run](https://helloworld-h6kixuyrhq-uc.a.run.app)
