resource "sumologic_collector" "aws_bpg_audit_all" {
  name        = "aws_bpg_audit_all"
  description = ""
  category    = "aws/bpg"
}

output "aws_bpg_audit_all_id" {
  value = sumologic_collector.aws_bpg_audit_all.id
}