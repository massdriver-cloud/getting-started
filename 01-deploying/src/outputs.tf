# Outputs are not necessary, but will show up in logs for debugging and referencing.
# They can also be used to create artifacts https://docs.massdriver.cloud/provisioners/opentofu#opentofu-outputs
output "generated_name" {
  description = "Random pet name"
  value       = random_pet.name.id
}

output "secure_password" {
  description = "Generated password (sensitive)"
  value       = random_password.password.result
  sensitive   = true
}

output "random_shuffle" {
  description = "Random shuffling of input words"
  value       = random_shuffle.shuffle.result
}