resource "aws_db_instance" "wpdb" {
  identifier             = "wpdb"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  engine                 = "mysql"
  db_name                = "wordpress_db"
  password               = "mypassword"
  username               = "maharshi"
  engine_version         = "5.7.44"
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.dbsubnet.name
  vpc_security_group_ids = ["${aws_security_group.db.id}"]
  lifecycle {
    ignore_changes = [engine, auto_minor_version_upgrade, vpc_security_group_ids]
  }
}

resource "aws_security_group" "db" {
  name   = "db_secgroup"
  vpc_id = aws_vpc.vpc.id
  ingress = [ {
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []    # Add this line
    prefix_list_ids  = []    # Add this line
    security_groups  = []    # Add this line
    self             = false # Add this line
    description      = "Allow all inbound traffic"
  } ]
  egress = [ {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []    # Add this line
    prefix_list_ids  = []    # Add this line
    security_groups  = []    # Add this line
    self             = false # Add this line
    description      = "Allow all outbound traffic"
  } ]
}