terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0" 
  backend "remote" {
    organization = "asad-tech"

    workspaces {
      name = "devops-tf-session-3"
    }
  }
}

provider "aws" {
  region  = "us-west-2"
    # assume_role {
    #   role_arn = "arn:aws:iam::936162900422:role/Terraform-role"
    # }
}


resource "aws_s3_bucket" "s3" {

  bucket = "my-devops-bucket-1" //varaibles

  tags = {
    Name        = "prod"
    Environment = "prod"
  }
}

resource "aws_s3_bucket" "s3_1" {

  bucket = "my-devops-bucket-2" //varaibles

  tags = {
    Name        = "prod"
    Environment = "prod"
  }
}


# module "my-security-group" {
#   source = "./sg"
#   security_group_name1 = "name-passed-from-main-ffile"
#   security_group_name2 = "name-passed-from-main"
# }

# module "machines"{
#   source = "./machines"
#   security_group_names  = module.my-security-group.security_group_names 
# }


# module "my_s3_1stmodule" {
#   source = "./s3"  
#   bucket_name = "devops-module-bucket0"
#   env= "my-testing-env"
# }

# module "my_s3_2nd_module" {
#   source = "./s3"  
#   bucket_name = "devops-module-bucket1"
#   env= "my-testing-env"
# }

# module "my_s3_3rd_module" {
#   source = "./s3"  
#   bucket_name = "devops-module-bucket2"
#   env= "my-testing-env"
# }





