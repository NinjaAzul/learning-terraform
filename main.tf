module "s3" {
  source   = "./modules/s3"
  ami_id   = "ami-xxxxxxxxxxxxxxxxx"
  org_name = "rocketseat"
  s3_tags = {
    Iac = true
  }
}

module "cloudfront" {
  source             = "./modules/cloudfront"
  origin_id          = module.s3.bucket_id
  bucket_domain_name = module.s3.bucket_domain_name
  cdn_tags = {
    Iac = true
  }

  depends_on = [
    module.s3
  ]
}

# example 3° libs (modules)
# module "sqs" {
#   source = "terraform-aws-modules/sqs/aws"

#   name = "devops-sql"

#   create_dlq = true

#   tags = {
#     Iac = true
#   }
# }
