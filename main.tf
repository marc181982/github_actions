terraform {
  backend "remote" {
    organization = "terratestomgeving"
    workspaces {
      name = "azure-landingzone-team-01"
    }
  }
}

resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
