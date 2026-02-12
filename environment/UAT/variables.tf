variable "region" {
  default = "ap-south-1"
}

variable "vpc_id" {
  default = "vpc-xxxxxx"
}

variable "private_subnets" {
  default = ["subnet-aaa", "subnet-bbb", "subnet-ccc"]
}