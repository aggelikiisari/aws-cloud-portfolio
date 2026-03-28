# Terraform Scaffold

This directory contains the first Infrastructure as Code scaffold for the `aws-cloud-portfolio` project.

Current Terraform scope:

- S3 bucket for the static website
- S3 versioning
- S3 default encryption
- S3 public access block
- DynamoDB table for the visitor counter

This scaffold is intentionally small and safe. It does not yet manage:

- CloudFront
- ACM
- Route 53
- Lambda
- API Gateway
- IAM roles and policies

## Files

- `versions.tf`: Terraform and provider versions
- `provider.tf`: AWS provider configuration
- `variables.tf`: input variables
- `main.tf`: current resource definitions
- `outputs.tf`: useful resource outputs
- `terraform.tfvars.example`: example variable values

## Suggested next steps

1. Copy `terraform.tfvars.example` to `terraform.tfvars`
2. Replace placeholder names with your real AWS resource names
3. Run `terraform init`
4. Run `terraform plan`
5. Expand the scaffold to include CloudFront, Route 53, ACM, Lambda, and API Gateway

## Important note

Because your infrastructure already exists, do not run `terraform apply` blindly.
The next safe step is to decide whether you want to:

- recreate selected resources with Terraform, or
- import existing AWS resources into Terraform state

For an existing live environment, importing current resources is usually the better path.
