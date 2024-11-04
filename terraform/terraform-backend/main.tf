module "will-101digital-terraform-state" {
    source = "terraform-aws-modules/s3-bucket/aws"

    bucket = "will-101digital-terraform-state"
    acl    = "private"

    control_object_ownership = true
    object_ownership         = "ObjectWriter"
    object_lock_enabled = true

    tags = {
        Name = "Remote Terraform State S3 Bucket"
    }
    versioning = {
        enabled = true
    }
}

module "will-101digital-table" {
    source   = "terraform-aws-modules/dynamodb-table/aws"

    name     = "will-101digital-table"
    hash_key = "LockID"

    attributes = [
        {
        name = "LockID"
        type = "S"
        }
    ]

    tags = {
        Terraform   = "true"
        Name = "DynamoDB Terraform State Lock Table"
    }
}