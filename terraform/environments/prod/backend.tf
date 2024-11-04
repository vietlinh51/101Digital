terraform {
    required_version = "~> 1.6"
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
    # backend "s3" {
    #     bucket = "terraform-state-my-bucket"
    #     key    = "zero-downtime-deployment-example/live/stage/data-stores/mysql/terraform.tfstate"
    #     region = "eu-west-1"
    # }
}