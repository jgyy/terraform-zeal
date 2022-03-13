# terraform-zeal

With tremendous popularity and adoption of Terraform by the Industry, the HashiCorp Certified: Terraform Associate has become one of the most popular certification in today's market.

## Running terraform script

When first initialised terraform, follow the steps below

```sh
terraform init
terraform apply -var-file terraform.tfvars <<< yes
terraform destroy <<< yes
```

## Generate temp ssh keys

```sh
ssh-keygen -f /tmp/id_rsa
```
