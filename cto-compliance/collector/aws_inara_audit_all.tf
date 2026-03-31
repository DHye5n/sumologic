resource "sumologic_collector" "aws_inara_audit_all" {
  name        = "aws_inara_audit_all"
  description = ""
  category    = "aws/inara"
}

output "aws_inara_audit_all_id" {
  value = sumologic_collector.aws_inara_audit_all.id
}