provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "eapenmani"          # Replace with your S3 bucket name
    key    = "production.tfstate" # Specify the path where the state file is stored
    region = "us-east-1"          # S3 bucket region
    # dynamodb_table = "your-locking-table"           # Replace with your DynamoDB table for state locking
    encrypt = true # Enable state encryption
  }
}
