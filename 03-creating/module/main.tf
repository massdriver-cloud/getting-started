# Random ID for resource naming
resource "random_id" "server_id" {
  byte_length = 4
  prefix      = "${var.project_name}-${var.environment}-${var.app_name}"
}

# Random password for database
resource "random_password" "db_password" {
  length  = var.password_config.length
  special = var.password_config.include_special
  upper   = var.password_config.include_upper
  lower   = var.password_config.include_lower
  numeric = var.password_config.include_numeric

  keepers = {
    length          = tostring(var.password_config.length)
    include_special = tostring(var.password_config.include_special)
    include_upper   = tostring(var.password_config.include_upper)
    include_lower   = tostring(var.password_config.include_lower)
    include_numeric = tostring(var.password_config.include_numeric)
  }
}

# Random bytes for encryption key
resource "random_bytes" "encryption_key" {
  length = var.encryption_key_length

  keepers = {
    encryption_key_length = tostring(var.encryption_key_length)
  }
}

# Random port assignment
resource "random_integer" "app_port" {
  min = var.port_range.min
  max = var.port_range.max

  keepers = {
    min = tostring(var.port_range.min)
    max = tostring(var.port_range.max)
  }
}

# Random selection from availability zones
resource "random_shuffle" "availability_zones" {
  input        = local.availability_zones_per_region[var.region]
  result_count = var.zone_count

  keepers = {
    region     = var.region
    zone_count = tostring(var.zone_count)
  }
}

locals {
  availability_zones_per_region = {
    "us-east-1" = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]
    "us-west-2" = ["us-west-2a", "us-west-2b", "us-west-2c", "us-west-2d"]
  }
}