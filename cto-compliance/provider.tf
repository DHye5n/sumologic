terraform {
  required_providers {
    sumologic = {
      source  = "sumologic/sumologic"
      version = "2.31.4"
    }
  }

  required_version = ">= 1.13.0"
}

provider "sumologic" {
  environment = "us1"
  access_id   = var.SUMOLOGIC_CTO_COMPLIANCE_ACCESSID
  access_key  = var.SUMOLOGIC_CTO_COMPLIANCE_ACCESSKEY
}