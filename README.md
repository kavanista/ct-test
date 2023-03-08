# Hello World 

SRE interview assignment for Cointracker

## Installation

```bash
pip -r requirements.txt
python app.py
```

## Docker Usage

```bash
docker build -t helloworld:latest . 
docker tag helloworld:latest gcr.io/cointracker-379915/helloworld:latest
docker push gcr.io/cointracker-379915/helloworld:latest
```


## Terraform Usage

```bash
terraform init
terraform apply
```
