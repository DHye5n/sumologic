resource "sumologic_collector" "aws_cns_audit_all" {
  name        = "aws_cns_audit_all"
  description = ""
  category    = "aws/cns"
}

output "aws_cns_audit_all_id" {
  value = sumologic_collector.aws_cns_audit_all.id
}