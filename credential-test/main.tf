terraform {
  required_providers {
    ansible = {
      source  = "ansible/ansible"
    }
  }
  backend "http" {
  }
}

# variable "host_name" {
#   type = string
# }

# variable "host_ip" {
#   type = string
# }

# variable "host_user" {
#   type = string
# }

resource "ansible_host" "my_ec2" {
  name   = "mynewhost"
  groups = ["fedora"]
  variables = {
    ansible_user  = "ansible"
    ansible_host  = "127.0.0.1"
  }
}
