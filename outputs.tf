# Output EC2 instance Public DNS 
output "public_dns" {
  description = "Public DNS of instance"
  value       = "${aws_instance.example.public_dns}"
}
