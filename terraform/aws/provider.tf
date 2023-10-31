terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.21"
    }
  }
     backend "s3" {
    bucket         = "tf-notifier-state-multi"
    key            = "path/to/terraform.tfstate"
    dynamodb_table = "tf-notifier-state-multi"
    region         = "us-east-1"
    profile        = "fiap"
  }
}

provider "aws" {
  region = "us-east-1"
  shared_config_files      = [".aws/config"]
  shared_credentials_files = [".aws/credentials"]
  alias  = "fiap"
}