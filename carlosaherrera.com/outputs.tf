output "website_bucket" {
  value = aws_s3_bucket.website_bucket.bucket_domain_name
}

output "bucket_parameter" {
  value = aws_ssm_parameter.cahp_site_bucket.arn
}
