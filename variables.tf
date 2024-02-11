variable "bucket_name" {
  description = "The name of the S3 bucket. Must be globally unique."
  type        = string
  default = "devops-training-statefile"
}

variable "table_name" {
  description = "The name of the DynamoDB table. Must be unique in this AWS account."
  type        = string
  default = "devops_training_statefile_table"
}

# variable "instance_name" {
#   description = "Value of the Name tag for the EC2 instance"
#   type        = string
#   default     = "ExampleAppServerInstance"
# }






