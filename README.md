# Multi-Cloud Terraform Networking Lab

An intentionally small Terraform example that creates a basic private network
in AWS, Azure, and Google Cloud. It is designed to compare provider patterns
without creating virtual machines, NAT gateways, public IP addresses, or other
compute resources.

> **Cost and safety:** cloud resources can incur charges and use real account
> permissions. Review every plan and your provider pricing before applying.
> This repository has no automatic apply workflow. Run `terraform destroy`
> when you are finished.

## Architecture

```text
Terraform root
├── AWS VPC + private subnet
├── Azure resource group + VNet + subnet
└── Google Cloud custom VPC + subnet
```

## Requirements

- Terraform 1.5 or later
- An authenticated AWS CLI profile or AWS environment credentials
- An Azure CLI session (`az login`) with permission to create a resource group
- Google Cloud Application Default Credentials (`gcloud auth application-default login`)
- A Google Cloud project with billing enabled and the Compute Engine API available

The providers use their standard credential chains. Do not put credentials,
service-account keys, or subscription secrets in `.tfvars` or source control.

## Configure

From the repository root:

```powershell
Copy-Item terraform.tfvars.example terraform.tfvars
```

Edit `terraform.tfvars` with your Azure subscription ID and Google Cloud
project ID. The example uses non-sensitive location and CIDR values.

## Review and deploy

```powershell
terraform init
terraform fmt -check -recursive
terraform validate
terraform plan -out=tfplan
terraform show tfplan
terraform apply tfplan
```

Apply only after reviewing the plan and confirming the selected credentials,
subscription, and project.

## Inspect and clean up

```powershell
terraform output
terraform destroy
```

Review the destroy plan before confirming. Remove local state and `terraform.tfvars`
only after verifying that the remote infrastructure has been destroyed.

## Practices demonstrated

- Separate modules for cloud-specific resources.
- Explicit provider version ranges and a committed dependency lock file.
- Input variables and outputs rather than hard-coded account identifiers.
- Tags/labels for ownership and purpose.
- No public IP, NAT gateway, VM, or automatic production deployment.

This lab is a learning example, not a complete enterprise landing zone. Add
remote state, identity controls, policy, logging, and environment separation
before adapting it for shared or production use.
