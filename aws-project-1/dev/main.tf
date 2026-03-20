module "s3_bucket" {
    source = "../../modules/storage"
    bucket_name = var.bucket_name
    enviroment = "dev"
}