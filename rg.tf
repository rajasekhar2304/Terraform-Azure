resource "azurerm_resource_group" "RG1" {
  name     = var.rg1_name
  location = var.location

  tags = {
    environment = var.environment
  }
}