# AWS Cloud Portfolio

Static website project deployed on AWS with a custom domain, CloudFront delivery, CI/CD, and a serverless visitor counter.

## Repository structure

- `index.html`: main website content
- `style.css`: site styling
- `.github/workflows/deploy.yml`: GitHub Actions deployment workflow
- `terraform/`: Infrastructure as Code scaffold for AWS resources

## Current cloud stack

- Amazon S3
- CloudFront
- ACM
- Route 53
- AWS Lambda
- DynamoDB
- API Gateway
- GitHub Actions

## Terraform

The `terraform/` directory contains the first Infrastructure as Code scaffold for the project.
It currently models:

- the S3 static site bucket
- the DynamoDB visitor counter table
- foundational security settings such as encryption and public access blocking

This is the starting point for gradually moving the existing infrastructure into Terraform.
