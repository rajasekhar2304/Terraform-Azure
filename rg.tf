resource "azurerm_resource_group" "RG1" {
  name     = "RG1"
  location = "eastus"

  tags = {
    environment = "Production"
  }
}
resource "azurerm_resource_group" "RG2" {
  name     = "RG2"
  location = "westus"

  tags = {
    environment = "Production"
  }
}
resource "azurerm_resource_group" "RG3" {
  name     = "RG3"
  location = "centralindia"

  tags = {
    environment = "Production"
  }
}