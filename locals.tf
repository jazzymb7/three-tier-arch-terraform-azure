locals {
  resource_name_prefix = "${var.company_name}-${var.project_name}-${var.environment}"
  common_tags = {
    Environment = var.environment
    Project     = var.project_name
    Company     = var.company_name
    ManagedBy   = "Terraform"
  }
}