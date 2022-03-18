variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "eu-west-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-0f29c8402f8cce65c"
    us-west-2 = "ami-0e8225827581c983a"
    eu-west-1 = "ami-d80f02be"
  }
}