sources = {
  source1 = {
    collector_key   = "collector1"
    name            = "cloudtrail-source-1"
    bucket_name     = "cloudtrail-dh-s3-bucket"
    path_expression = "AWSLogs/*/CloudTrail/*"
    role_arn        = "arn:aws:iam::860605881283:role/sumo-s3-access-role"
  }

  source2 = {
    collector_key   = "collector2"
    name            = "cloudtrail-source-2"
    bucket_name     = "cloudtrail-dh-s3-bucket"
    path_expression = "AWSLogs/*/CloudTrail/*"
    role_arn        = "arn:aws:iam::860605881283:role/sumo-s3-access-role"
  }
}