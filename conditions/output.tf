output "public_ip" {
  value       = aws_instance.terraform.public_ip
  sensitive   = false
  description = "this the public ip"
  depends_on  = []
}


output "private_ip" {
  value       = aws_instance.terraform.private_ip
  sensitive   = false
  description = "description"
  depends_on  = []
}
