# Hello World 

SRE interview assignment for Cointracker

## Overview

This is a simple Python/Flask "Hello World" app <br />
<br>
Built using Docker and pushed to Google Container Registry<br />
<br>
Includes Terraform configs which create Cloud Run and Cloud Build resources in GCP, which in turn deploy the app and enable CI/CD<br />

## Architecture / Components 

This repo contains the following:

* Python app that uses Flask to respond to HTTP requests 
* Dockerfile to containerise the Flask app
* Terraform code that implements the Google Cloud provider configure and initially deploy the container to Cloud Run 
* Terraform code that creates a Cloud Build trigger, which watches commits to this repo and triggers deploys 
* Cloudbuild config for building the container, pushing to Google Container Registry and deploying the container to Cloud Run (upon commits to the main branch)


## Design Motivations

* I felt it was appropriate to use Docker in order to maintain parity between dev and prod, it allowed for rapid local testing and deployment <br />
* Google Cloud Run was selected as a container runtime as it's simple and quick to implement and fits well with Cloud Build and GCR <br />
* Terraform was used for the IaC aspect as I feel the Google Cloud TF provider is quite well maintained and exceptionally well documented

## Potential Improvements
 
* Unit Testing for Flask app and add a testing step in the Dockerfile 
* GCP Service Accounts and IAM bindings/roles could have been used in a more granular fasion, but are fine for the purposes of this simple app
* Implement a Makefile to faciliate local execution/testing and to faciliate pushing containers to GCR
* A custom domain could be added (via Terraform) to bind the Cloud Run URL to something more apt
* Cloud Build status checks/badges could be displayed in this README to show build status

## Local Testing

```bash
docker build -t helloworld:latest . 
docker run -d -p 5000:5000 hello-world:latest
```

## Pushing to Google Container Registry

```bash
docker tag helloworld:latest gcr.io/cointracker-379915/helloworld:latest
docker push gcr.io/cointracker-379915/helloworld:latest
```

You may need to subsitute the GCP project name above (eg. cointracker-379915) to your own

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





