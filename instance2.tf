resource "aws_instance" "web" {
ami                         = "ami-03bb6d83c60fc5f7c"
instance_type               = "t2.micro"
key_name                    = "K8sproject"
monitoring                  = true
vpc_security_group_ids      = ["${aws_security_group.sg.id}"]
subnet_id                   = aws_subnet.private_subnet.id
private_ip                  = "10.0.1.11"
associate_public_ip_address = false
tags = {
    Name = "terraform-web2"
}
    user_data = file("user_data_ins2.sh")
}