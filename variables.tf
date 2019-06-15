variable "region" {
    default = "us-west-2"
}

provider "aws" {
  region     = "${var.region}"
  access_key = "xxxxxxxxxxxxxx"
  secret_key = "xxxxxxxxxxxxxx"
}

variable "connection_user" {
    default = "ubuntu"
    description = "Ubuntu SSH user"
}

variable "key_name" {
    description = "SSH key name in your AWS account for AWS instances."
    default = "default"
}

variable "count_consul_servers" {
    default = 3
    description = "The number of Consul servers to launch."
}

variable "consul_instance_type" {
    default = "t2.micro"
    description = "AWS Instance type"
}

variable "consul_tag_name" {
    default = "consul"
    description = "Name tag for the servers"
}

data "aws_availability_zones" "azs" {}