resource "random_pet" "name" {
  length    = var.pet.length
  separator = "-"
  
  keepers = {
    length = var.pet.length
  }
}

resource "random_password" "password" {
  length  = var.password.length
  special = var.password.enable_special
  upper   = true
  lower   = true
  numeric = true
}

resource "random_shuffle" "shuffle" {
  input = var.shuffle.words
}
