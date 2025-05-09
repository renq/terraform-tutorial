# aws tool
# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }

  # backend "s3" {
  #   bucket = "lipek-terraform-bucket-1"
  #   key    = "default.tfstate"
  #   use_lockfile = "true"
  #   region = "eu-north-1"
  # }
}


provider "aws" {
  # credentials are stored in ~/.aws/
  region = "eu-north-1"
}


provider "github" {
}
