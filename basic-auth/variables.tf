variable "name" {
  default = "Auth-Basic-EDFDVBD6EXAMPLE"
}

variable "regions" {
  type    = list(string)
  default = ["us-east-1", "us-east-2", "us-west-1", "us-west-2"]
}
