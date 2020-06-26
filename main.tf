#Terraform Cloud Backend!
terraform {
  backend "remote" {
    organization = "terratestomgeving"
    workspaces {
      name = "azure-api-driven-workflow"
    }
  }
}

#Creates a null_resource in Azure
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
