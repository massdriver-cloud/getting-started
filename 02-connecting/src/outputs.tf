# # Outputs are not necessary, but will show up in logs for debugging and referencing.
# They can also be used to create artifacts https://docs.massdriver.cloud/provisioners/opentofu#opentofu-outputs

output "extended_pet_name" {
  description = "New pet name using the original as a prefix"
  value       = random_pet.extended_name.id
}

output "password_based_port" {
  description = "Port number derived from password length (shows using metadata from connections)"
  value       = random_integer.password_based_port.result
}

output "reshuffled_words" {
  description = "New order of the shuffled words from step 1"
  value       = random_shuffle.reshuffle.result
}