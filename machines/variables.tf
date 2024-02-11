variable "machine_name" {
  description = "Name"
  type        = string
  default = "my-module-created-machine"
}

variable "security_group_names" {
  type    = list(string)
}
