variable "region" {
  default = "ap-south-1"
}

variable "bucket_name" {}
variable "cluster_name" {}
variable "private_subnets" {}
variable "public_subnets" {}
variable "cidr_block" {}
variable "instance_type" {
  default = "t3.medium"
}
