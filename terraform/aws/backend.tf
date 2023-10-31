terraform {
      backend "s3" {
    bucket         = "tf-notifier-state-multi"
    key            = "path/to/terraform.tfstate"
    dynamodb_table = "tf-notifier-state-multi"
    region         = "us-east-1"
  }
}