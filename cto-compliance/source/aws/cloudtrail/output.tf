output "source_ids" {
  description = "Map of source keys to source IDs"
  value = {
    for k, v in sumologic_cloudtrail_source.this :
    k => v.id
  }
}