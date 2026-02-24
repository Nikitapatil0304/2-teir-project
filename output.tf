output "public_ip" {
    value = aws_instance.public_server.public_ip
  
}
output "private_ip" {
    value = aws_instance.pvt_server.private_ip
  
}
