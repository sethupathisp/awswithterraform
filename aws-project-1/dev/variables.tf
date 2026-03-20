variable "region" {
  default = "ap-south-1"
}

variable "bucket_name" {}
variable "cluster_name" {}
variable "public_subnets" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}
variable "cidr_block" {}
variable "instance_type" {
  default = "t3.medium"
}
variable "azs" {
  
}