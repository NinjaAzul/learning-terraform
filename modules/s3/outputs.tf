output "bucket_domain_name" {
  value       = data.aws_s3_bucket.bucket_data.bucket_domain_name
  sensitive   = false
  description = "Nome de dominio do bucket"
}

output "bucket_region" {
  value       = data.aws_s3_bucket.bucket_data.region
  sensitive   = false
  description = "Nome da regiao do bucket"
}

output "bucket_id" {
  value = data.aws_s3_bucket.bucket_data.id
  sensitive = false
  description = "id do dominio do bucket s3"
  }