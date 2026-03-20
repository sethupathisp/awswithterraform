terraform {
    backend "s3" {
        bucket = "sethu-dev-bucket-12345"
        key = "dev/terraform.tfstate"
        region = "ap-south-1"
        use_lockfile = true
    }
}