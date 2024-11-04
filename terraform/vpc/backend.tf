terraform {
    required_version = "~> 1.6"
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
    backend "s3" {
        bucket = "will-101digital-terraform-state"
        key    = "vpc/terraform.tfstate"
        region = var.region
    }
}