# LOCAL VALUES - These are like variables but computed at runtime
# They help reduce repetition and make the code more maintainable
locals {
  # Tags that will be applied to all resources for organization and billing
  common_tags = {
    Environment = upper(var.environment)
    Project     = var.project_name
    ManagedBy   = lower(var.managed_by)
  }

  import_demo_sg_ids = length(var.import_demo_sg_ids) > 0 ? var.import_demo_sg_ids : [aws_security_group.web_sg.id]

  import_demo_tags = merge(
    local.common_tags,
    {
      Name = var.import_demo_name
    }
  )
}
