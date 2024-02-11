# output "s3_bucket_arn" {
#   value       = data.aws_s3_bucket.selected.arn //
#   description = "Name"
# }

output "listofazd" {
  description = "Print list of Azs"
  value       = data.aws_availability_zones.available.zone_ids
}

# output "dynamodb_table_name" {
#   value       = aws_dynamodb_table.terraform_locks.name
#   description = "The name of the DynamoDB table"
# }

# output "my_s3_bucket_name" {
#   value       = aws_s3_bucket.s3_bucket_training.id
#   description = "The ARN of the S3 bucket"
# }

# output "instance_id" {
#   description = "ID of the EC2 instance"
#   value       = aws_instance.app_server.id
# }

# output "instance_public_ip" {
#   description = "Public IP address of the EC2 instance"
#   value       = aws_instance.app_server.public_ip
# }

