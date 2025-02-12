terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.32.1"
    }
  }

  backend "s3" {
    bucket         = "gokul-comcast-bucket"
    key            = "minikube"
    region         = "us-east-1"
    dynamodb_table = "gokul-comcast-locking"
  }
}

provider "aws" {
  # Configuration options
  # you can give access key and secret key here, but security problem
  region = "us-east-1"
}