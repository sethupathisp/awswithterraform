module "s3_bucket" {
    source = "../../modules/storage"
    bucket_name = var.bucket_name
    enviroment = "dev"
}

module "vpc" {
    source = "../../modules/networking"
    cidr_block = var.cidr_block
    public_subnets = var.public_subnets
    private_subnets = var.private_subnets
    region = var.region

}

module "eks" {
    source = "../../modules/containerservices"
    cluster_name = var.cluster_name
    subnet_ids = module.vpc.private_subnet_ids
    vpc_id = module.vpc.vpc_id
  
}