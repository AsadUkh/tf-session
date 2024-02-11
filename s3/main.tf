

# resource "aws_s3_bucket" "s3_bucket_training" {
#   bucket = "asad-devops-bucket"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }



// module creation
# resource "aws_s3_bucket" "my_s3_resource" {
#   for_each = toset(var.marketplace_apps)
#   bucket = each.key  //varaibles

#   tags = {
#     Name        = each.key
#     Environment = var.env
#   }
# }


resource "aws_s3_bucket" "s3" {

  bucket = var.bucket_name //varaibles

  tags = {
    Name        = var.bucket_name
    Environment = var.env
  }
}




