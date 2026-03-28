output "site_bucket_id" {
  description = "ID of the S3 bucket for the static site."
  value       = aws_s3_bucket.site.id
}

output "site_bucket_arn" {
  description = "ARN of the S3 bucket for the static site."
  value       = aws_s3_bucket.site.arn
}

output "visitor_table_name" {
  description = "Name of the DynamoDB table used by the visitor counter."
  value       = aws_dynamodb_table.visitor_counter.name
}

output "visitor_table_arn" {
  description = "ARN of the DynamoDB table used by the visitor counter."
  value       = aws_dynamodb_table.visitor_counter.arn
}
