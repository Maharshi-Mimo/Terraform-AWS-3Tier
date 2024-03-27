resource "aws_instance" "nginx" {
  ami                         = "ami-03bb6d83c60fc5f7c"
  instance_type               = "t2.micro"
  key_name                    = "K8sproject"
  monitoring                  = true
  vpc_security_group_ids      = ["${aws_security_group.sg.id}"]
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  tags = {
    Name = "terraform-nginx"
  }
  user_data = file("user_data_nginx.sh")
}