terraform {
  backend "s3" {
    bucket         = "terraform-cahpsite-state-bucket"
    key            = "web_tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-state-lock-table"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.70"
    }
  }
}