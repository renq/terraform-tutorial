resource "aws_instance" "myec2" {
  ami           = local.ami_id
  instance_type = "t3.micro"

  tags = local.common_tags


  # if we want to skip overwriting manual changes in tags
  # https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle
  # lifecycle {
  #   ignore_changes = [tags]
  # }


  # If we want mre instances ;)
  # count = 2
  # tags = {
  #   Name = "HelloWorld-${count.index}"
  # }
}


# terraform init - to download stuff

# terraform plan - to verify what will be created

# terraform apply - to apply the configuration
