variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.micro"
}

variable "ami_filter" {
  description = "name filter and owner for ami"

  type = object({
    name  = string
    owner = string
  })

  default = {
    name = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631"
  }
}

variable "environment" {
  description = "development environment"

  type = object({
    name           = string
    network_prefix = string
  })

  default = {
    name           = "dev"
    network_prefix = "10.0"
  }
}

variable "asg_min_size" {
  description = "Minimum number of instances in the ASG"
  default     = 1
}

variable "asg_max_size" {
  description = "Maximum number of instances in the ASG"
  default     = 2
}