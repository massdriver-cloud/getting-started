output "server_id" {
  description = "Complete server name with ID"
  value       = random_id.server_id.b64_url
}

output "database_password" {
  description = "Generated database password"
  value       = nonsensitive(random_password.db_password.result)
}

output "encryption_key" {
  description = "Generated encryption key (base64 encoded)"
  value       = nonsensitive(random_bytes.encryption_key.base64)
}

output "application_port" {
  description = "Assigned application port"
  value       = random_integer.app_port.result
}

output "selected_zones" {
  description = "Selected availability zones"
  value       = random_shuffle.availability_zones.result
}