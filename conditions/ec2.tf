resource "aws_security_group" "allow_ssh_terraform" {
  name        = "allow_ssh"
  description = "Allow SSH access on port 22"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # Allow all outbound traffic
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp" # Corrected to "tcp"
    cidr_blocks      = ["0.0.0.0/0"] # Consider restricting to specific IP range for better security
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_instance" "terraform" {
  ami                         = "ami-09c813fb71547fc4f"
  instance_type               = var.environment == "prod" ? "t3.small" : "t3.micro"
  vpc_security_group_ids      = [aws_security_group.allow_ssh_terraform.id]

  tags = {
    Name = "terraform_instance"
  }
}

#