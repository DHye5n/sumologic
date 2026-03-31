resource "sumologic_collector" "aws_share_audit_all" {
  name        = "aws_share_audit_all"
  description = ""
  category    = "aws/share"
}

output "aws_share_audit_all_id" {
  value = sumologic_collector.aws_share_audit_all.id
}