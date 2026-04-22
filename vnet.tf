resource "azurerm_virtual_network" "vnet1" {
  name                = "${azurerm_resource_group.RG1.name}-vnet1"
  location            = "${azurerm_resource_group.RG1.location}"
  resource_group_name = "${azurerm_resource_group.RG1.name}"
  address_space       = ["10.0.0.0/16"]

  tags = {
    environment = "Production"
  }
}