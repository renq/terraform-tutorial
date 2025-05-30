# aws tool
# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
  # credentials are stored in ~/.aws/
  region     = "eu-north-1"
}
