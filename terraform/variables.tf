variable "aws_region" {
  description = "AWS region where the infrastructure will be managed."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Short project name used in resource naming."
  type        = string
  default     = "aws-cloud-portfolio"
}

variable "environment" {
  description = "Deployment environment name."
  type        = string
  default     = "prod"
}

variable "site_bucket_name" {
  description = "Name of the S3 bucket used for the static site."
  type        = string
}

variable "visitor_table_name" {
  description = "Name of the DynamoDB table used by the visitor counter."
  type        = string
  default     = "visitor-counter"
}

variable "default_tags" {
  description = "Tags applied to all Terraform-managed resources."
  type        = map(string)
  default = {
    Project   = "aws-cloud-portfolio"
    ManagedBy = "terraform"
  }
}
