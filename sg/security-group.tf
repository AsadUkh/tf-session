resource "aws_security_group" "allow_http" {
  name        = var.security_group_name1 
  description = "Allow incoming HTTP traffic"
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }
}


resource "aws_security_group" "allow_ssh_and_outbound" {
  name        = var.security_group_name2 
  description = "Allow incoming SSH traffic"
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  
    cidr_blocks = ["0.0.0.0/0"]
  }
}


