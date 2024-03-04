module "papercortex_s3_bucket_name" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket                   = var.papercortex_s3_bucket_name
  acl                      = "private"
  control_object_ownership = true
  object_ownership         = "ObjectWriter"
  tags = merge(
    local.common_tags,
    {
      Name = "${var.project_name}-${var.environment}-papercortex-s3-bucket"
    }
  )
}
