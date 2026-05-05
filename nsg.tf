resource "azurerm_network_security_group" "rg1-nsg1" {
  name                = "${azurerm_resource_group.RG1.name}-nsg1"
  location            = azurerm_resource_group.RG1.location
  resource_group_name = azurerm_resource_group.RG1.name

  tags = {
    environment = var.environment
  }
}