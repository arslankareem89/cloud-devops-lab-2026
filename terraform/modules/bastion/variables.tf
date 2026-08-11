variable "project_name" {
  description = "Project name."
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the bastion host."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
}

variable "subnet_id" {
  description = "Public subnet ID."
  type        = string
}

variable "security_group_id" {
  description = "Bastion security group ID."
  type        = string
}

variable "key_name" {
  description = "EC2 key pair name."
  type        = string
}

variable "iam_instance_profile" {
  description = "IAM instance profile for the bastion host."
  type        = string
}
