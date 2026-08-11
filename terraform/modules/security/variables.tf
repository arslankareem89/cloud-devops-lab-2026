variable "project_name" {
  description = "Project name used for security group naming and tagging."
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the security groups will be created."
  type        = string
}

variable "admin_cidr" {
  description = "CIDR allowed to SSH into the bastion host."
  type        = string
}

variable "app_port" {
  description = "TCP port exposed by the application server."
  type        = number
  default     = 8080
}
