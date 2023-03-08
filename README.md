# Hello World 

SRE interview assignment for Cointracker

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


## CI/CD 

Commits to the main branch will trigger a Cloud Build job that will build the container and deploy it to Cloud Run
