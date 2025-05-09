variable "region" {
  type    = string
  default = "eu-north-1"
  sensitive = false # if true, it won't be printed in the terminal and stored in tfstate
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*"]
  }
}

locals {
  ami_id = data.aws_ami.amazon_linux.image_id
}

locals {
  common_tags = {
    Name = "HelloWorld"
  }
}



output "region" {
  value = var.region
}
