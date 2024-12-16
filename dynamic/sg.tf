resource "aws_security_group" "allow_ssh" {
  name        = "dynamic_demo"
  description = "Allow SSH access on port 22"

 
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

     # terraform will give us a variable with block name
    dynamic "ingress" {
        for_each = var.ingress_rules
        content {
            from_port        = ingress.value["from_port"]
            to_port          = ingress.value["to_port"]
            protocol         = ingress.value["protocol"]
            cidr_blocks      = ingress.value.cidr_blocks
        }
    }

   tags = {
        Name = "allow_sshh"
    }
}