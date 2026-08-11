variable "project_name" {
  description = "Project name."
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the application server."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
}

variable "subnet_id" {
  description = "Private subnet ID."
  type        = string
}

variable "security_group_id" {
  description = "Application security group ID."
  type        = string
}

variable "iam_instance_profile" {
  description = "IAM instance profile for the application server."
  type        = string
}
