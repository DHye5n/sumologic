resource "sumologic_collector" "aws_mgz_audit_all" {
  name        = "aws_mgz_audit_all"
  description = ""
  category    = "aws/mgz"
}

output "aws_mgz_audit_all_id" {
  value = sumologic_collector.aws_mgz_audit_all.id
}