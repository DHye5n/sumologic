resource "sumologic_collector" "aws_bss_audit_all" {
  name        = "aws_bss_audit_all"
  description = ""
  category    = "aws/bss"
}

output "aws_bss_audit_all_id" {
  value = sumologic_collector.aws_bss_audit_all.id
}