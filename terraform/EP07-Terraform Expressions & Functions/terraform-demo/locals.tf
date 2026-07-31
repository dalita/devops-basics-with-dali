locals {
  common_tags = {
    Environment = upper(var.environment)
    Project     = var.project_name
    ManagedBy   = lower(var.managed_by)
  }
}