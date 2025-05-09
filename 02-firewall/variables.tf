variable "app_port" {
    default = 80
    description = "Application HTTP port"
    type = number
    sensitive = false
}

# terraform.tfvars is default but it could be changed with this argument:
# terraform plan -var-file="env.tfvars"
