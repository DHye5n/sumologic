output "collector_ids" {
  value = {
    for k, v in sumologic_collector.this :
    k => v.id
  }
}