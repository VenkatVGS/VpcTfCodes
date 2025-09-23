terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
 # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "sowmi-bkt-789456123"
    key    = "devops/terraform.tfstate"
    region = "ap-south-1"   
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}


