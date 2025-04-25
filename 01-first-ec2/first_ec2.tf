
resource "aws_instance" "myec2" {
  ami           = "ami-0274f4b62b6ae3bd5"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }


  # If we want mre instances ;)
  # count = 2
  # tags = {
  #   Name = "HelloWorld-${count.index}"
  # }
}

# terraform init - to download stuff

# terraform plan - to verify what will be created

# terraform apply - to apply the configuration
