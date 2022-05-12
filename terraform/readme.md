# Terraform

**Instalation**

```sh
curl -sfLO https://releases.hashicorp.com/terraform/1.1.9/terraform_1.1.9_linux_amd64.zip
unzip terraform_1.1.9_linux_amd64.zip
sudo mv terraform /usr/local/bin/terraform
sudo chmod +x /usr/local/bin/terraform
sudo ln -sf /usr/local/bin/terraform /usr/bin/terraform
```

**Requirements for using Terraform on AWS**

Install AWS-CLI

```sh
python3 -m pip install awscli
# Or only Ubuntu
sudo apt install awscli
```


Configure with your aws account details

```sh
aws configure
#   AWS Access Key ID [None]: *****
#   AWS Secret Access Key [None]: *****
#   Default region name [None]: us-east-1
#   Default output format [None]:
```

Credential file save in ```~/.aws/credentials```

**Clone repository and go to terraform directory**

```sh
git clone https://github.com/tiagopgeremias/iac-learning.git
cd iac-learning/terraform
```

**Terraform init to download providers and modules defined in yours Terraform files**

```sh
terraform init
```

**Verify your plan detail**

```sh
terraform plan
```

**Apply to create the infrastructure on AWS cloud provider**

```sh
terraform apply
```

**To destroy your infrastructure created**

```sh
terraform destroy
```