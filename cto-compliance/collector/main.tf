resource "sumologic_collector" "this" {
  for_each = var.collectors

  name        = each.value.name
  description = each.value.description
}