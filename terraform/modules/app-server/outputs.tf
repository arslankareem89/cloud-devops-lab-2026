output "instance_id" {
  description = "Application server instance ID."
  value       = aws_instance.app.id
}

output "private_ip" {
  description = "Application server private IP."
  value       = aws_instance.app.private_ip
}

output "private_dns" {
  description = "Application server private DNS."
  value       = aws_instance.app.private_dns
}
