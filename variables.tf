variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  type = "string"

  default = {
    us-east-1    = "ami-042e8287309f5df03"
  }
}
