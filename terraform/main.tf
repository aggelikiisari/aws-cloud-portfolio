locals {
  common_tags = merge(
    var.default_tags,
    {
      Environment = var.environment
    }
  )
}

resource "aws_s3_bucket" "site" {
  bucket = var.site_bucket_name

  tags = merge(
    local.common_tags,
    {
      Name = var.site_bucket_name
      Role = "static-site"
    }
  )
}

resource "aws_s3_bucket_versioning" "site" {
  bucket = aws_s3_bucket.site.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "site" {
  bucket = aws_s3_bucket.site.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "site" {
  bucket = aws_s3_bucket.site.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_dynamodb_table" "visitor_counter" {
  name         = var.visitor_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = merge(
    local.common_tags,
    {
      Name = var.visitor_table_name
      Role = "visitor-counter"
    }
  )
}

# Next steps:
# 1. Add CloudFront distribution and Origin Access Control.
# 2. Add ACM certificate and Route 53 DNS records for the custom domain.
# 3. Add Lambda + IAM + API Gateway resources for the visitor counter backend.
