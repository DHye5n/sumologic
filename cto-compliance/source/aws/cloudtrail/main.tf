# collector state 읽기
data "terraform_remote_state" "collector" {
  backend = "local"

  config = {
    path = "../../../collector/terraform.tfstate"
  }
}

# CloudTrail source 생성
resource "sumologic_cloudtrail_source" "this" {
  for_each = var.sources

  collector_id = data.terraform_remote_state.collector.outputs.collector_ids[each.value.collector_key]

  name         = each.value.name
  description  = "CloudTrail source managed by Terraform"
  category     = "aws/cloudtrail/logs"
  content_type = "AwsCloudTrailBucket"

  authentication {
    type     = "AWSRoleBasedAuthentication"
    role_arn = each.value.role_arn
  }

  path {
    type            = "S3BucketPathExpression"
    bucket_name     = each.value.bucket_name
    path_expression = each.value.path_expression
  }
}