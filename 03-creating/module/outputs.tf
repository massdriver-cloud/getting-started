output "server_id" {
  description = "Complete server name with ID"
  value       = random_id.server_id.id
}

output "database_password" {
  description = "Generated database password"
  value       = random_password.db_password.result
  sensitive   = true
}

output "encryption_key" {
  description = "Generated encryption key (base64 encoded)"
  value       = random_bytes.encryption_key.base64
  sensitive   = true
}

output "application_port" {
  description = "Assigned application port"
  value       = random_integer.app_port.result
}

output "selected_zones" {
  description = "Selected availability zones"
  value       = random_shuffle.availability_zones.result
}

output "deployment_info" {
  description = "Summary of deployment configuration"
  value = {
    environment         = var.environment
    project_name        = var.project_name
    server_id          = random_id.server_id.hex
    application_port   = random_integer.app_port.result
    selected_zones     = random_shuffle.availability_zones.result
    encryption_key_id  = random_bytes.encryption_key.hex
  }
}