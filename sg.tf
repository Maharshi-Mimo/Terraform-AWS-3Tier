resource "aws_security_group" "sg" {
  vpc_id      = aws_vpc.vpc.id
  name        = "security-group"
  description = "Allow SSH, HTTP, HTTTPS"
ingress = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      ipv6_cidr_blocks = [] # Add this line
      prefix_list_ids = [] # Add this line
      security_groups = [] # Add this line
      self = false # Add this line
      description = "Allow all inbound traffic"
    },
    {
      from_port   = 8
      to_port     = 0
      protocol    = "icmp"
      cidr_blocks = ["0.0.0.0/0"]
      ipv6_cidr_blocks = [] # Add this line
      prefix_list_ids = [] # Add this line
      security_groups = [] # Add this line
      self = false # Add this line
      description = "Allow all inbound traffic"
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      ipv6_cidr_blocks = [] # Add this line
      prefix_list_ids = [] # Add this line
      security_groups = [] # Add this line
      self = false # Add this line
      description = "Allow all inbound traffic"
    },
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      ipv6_cidr_blocks = [] # Add this line
      prefix_list_ids = [] # Add this line
      security_groups = [] # Add this line
      self = false # Add this line
      description = "Allow all inbound traffic"
    },
    {
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      cidr_blocks = ["10.0.2.0/24"]
      ipv6_cidr_blocks = [] # Add this line
      prefix_list_ids = [] # Add this line
      security_groups = [] # Add this line
      self = false # Add this line
      description = "Allow all inbound traffic"
    }
]


egress = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      ipv6_cidr_blocks = [] # Add this line
      prefix_list_ids = [] # Add this line
      security_groups = [] # Add this line
      self = false # Add this line
      description = "Allow all outbound traffic"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      ipv6_cidr_blocks = [] # Add this line
      prefix_list_ids = [] # Add this line
      security_groups = [] # Add this line
      self = false # Add this line
      description = "Allow all outbound traffic"
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      ipv6_cidr_blocks = [] # Add this line
      prefix_list_ids = [] # Add this line
      security_groups = [] # Add this line
      self = false # Add this line
      description = "Allow all outbound traffic"
    },
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      ipv6_cidr_blocks = [] # Add this line
      prefix_list_ids = [] # Add this line
      security_groups = [] # Add this line
      self = false # Add this line
      description = "Allow all outbound traffic"
    },
    {
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      cidr_blocks = ["10.0.2.0/24"]
      ipv6_cidr_blocks = [] # Add this line
      prefix_list_ids = [] # Add this line
      security_groups = [] # Add this line
      self = false # Add this line
      description = "Allow all outbound traffic"
    }
  ]

  tags = {
    Name = "sg"
  }
}