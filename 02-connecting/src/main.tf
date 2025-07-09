# Create a new pet name using the connected pet name as a prefix
resource "random_pet" "extended_name" {
  length    = 2
  separator = "-"
  prefix    = var.your_first_connection.data.pet-name

  keepers = {
    original_pet_name = var.your_first_connection.data.pet-name
  }
}

# Create an integer based on the length of the password
resource "random_integer" "password_based_port" {
  min = 3000
  max = 3000 + length(var.your_first_connection.data.password) * 100
  
  keepers = {
    password_length = length(var.your_first_connection.data.password)
  }
}

# Reshuffle the words from the connected data
resource "random_shuffle" "reshuffle" {
  input = var.your_first_connection.data.shuffle

  keepers = {
    original_shuffle = join(",", var.your_first_connection.data.shuffle)
  }
}