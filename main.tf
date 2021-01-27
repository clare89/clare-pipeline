terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region              = "eu-west-1"
  profile             = "lsm-x3-training"
  allowed_account_ids = ["074656803336"]
}

# Configure remote terraform state
terraform {
  backend "s3" {
    bucket = "clare-bucket"
    key = "clare-bucket/terraform.tfstate"
    region = "eu-west-1"
    profile = "lsm-x3-training"
    dynamodb_table = "clare-table"
  }
}
