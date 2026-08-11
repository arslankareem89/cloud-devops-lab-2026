variable "aws_region" {
  description = "AWS region for the infrastructure."
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name used for resource naming and tagging."
  type        = string
  default     = "cloud-devops-lab-2026"
}

variable "vpc_cidr" {
  description = "CIDR block for the project VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet."
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "Availability Zone used by the lab."
  type        = string
  default     = "ap-south-1a"
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

variable "ami_id" {
  description = "Amazon Linux 2023 AMI ID."
  type        = string
  default     = "ami-0d15e9052c94acb75"
}

variable "instance_type" {
  description = "EC2 instance type for lab servers."
  type        = string
  default     = "t3.micro"
}


variable "key_name" {
  description = "EC2 key pair name."
  type        = string
}
