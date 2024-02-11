locals {
  security_group_names = [
    aws_security_group.allow_http.name,
    aws_security_group.allow_ssh_and_outbound.name,
  ]
}

output "security_group_names" {
  value = local.security_group_names
}

