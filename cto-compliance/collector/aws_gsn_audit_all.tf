resource "sumologic_collector" "aws_gsn_audit_all" {
  name        = "aws_gsn_audit_all"
  description = ""
  category    = "aws/gsn"
}

output "aws_gsn_audit_all_id" {
  value = sumologic_collector.aws_gsn_audit_all.id
}