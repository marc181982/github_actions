terraform {
  backend "remote" {
    organization = "terratestomgeving"
    workspaces {
      name = "azure-api-driven-workflow"
    }
  }
}

resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
