locals {
  prefix = "${var.app_name}-${var.environment}"
  default_tags = {
    Project     = var.app_name
    Environment = var.environment
  }
  scaled_instances = var.environment == "prod" ? var.instance_count * 2 : var.instance_count
}
