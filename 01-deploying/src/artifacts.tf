# Leave this commented out until you are on step 2

# resource "massdriver_artifact" "example" {
#   field = "your_first_artifact"
#   name  = "A human friendly name. This is the artifact for ${var.md_metadata.name_prefix}"

#   artifact = jsonencode({
#     data = {
#       pet-name = random_pet.name.id
#       password = random_password.password.result
#       shuffle  = random_shuffle.shuffle.result
#     }
#     specs = {}
#   })
# }
