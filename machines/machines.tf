
# resource "aws_instance" "app_server" {
#   ami           = "ami-830c94e3"
#   instance_type = "t2.micro"

#   tags = {
#     Name ="my-testing-machine"//var.instance_name 
#   }
# }





# resource "aws_vpc" "my_vpc" {
#   cidr_block = "172.16.0.0/16"

#   tags = {
#     Name = "tf-example"
#   }
# }

# resource "aws_subnet" "my_subnet" {
#   vpc_id            = aws_vpc.my_vpc.id
#   cidr_block        = "172.16.10.0/24"
#   availability_zone = "us-west-2a"

#   tags = {
#     Name = "tf-example"
#   }
# }

# resource "aws_network_interface" "foo" {
#   subnet_id   = aws_subnet.my_subnet.id
#   private_ips = ["172.16.10.100"]

#   tags = {
#     Name = "primary_network_interface"
#   }
# }

# resource "aws_instance" "foo" {
#   ami           = "ami-005e54dee72cc1d00" # us-west-2
#   instance_type = "t2.micro"

#   network_interface {
#     network_interface_id = aws_network_interface.foo.id
#     device_index         = 0
#   }

#   credit_specification {
#     cpu_credits = "unlimited"
#   }
# }


resource "aws_instance" "example_instance" {
  ami             = "ami-0ecb0bb5d6b19457a"
  instance_type   = "t2.micro"

  security_groups = var.security_group_names//[aws_security_group.allow_ssh_and_outbound.name,aws_security_group.allow_ssh_and_outbound.name]

  key_name = "my-machine-ssh-keypair"
  
  user_data = <<-EOF
              #!/bin/bash
              sudo yum -y install epel-release
              sudo yum -y install nginx
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF

  tags = {
    Name = var.machine_name
  }
}






  