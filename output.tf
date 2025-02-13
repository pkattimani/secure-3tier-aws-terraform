output "vpc_id" {
  value = aws_vpc.main.id
}

output "web_instance_ips" {
  value = aws_instance.web[*].public_ip
}

output "db_endpoint" {
  value = aws_db_instance.db.endpoint
}