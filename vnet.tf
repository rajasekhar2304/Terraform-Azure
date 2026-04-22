resource "azurerm_virtual_network" "vnet1" {
  name                = "${azurerm_resource_group.RG1.name}-vnet1"
  location            = "${azurerm_resource_group.RG1.location}"
  resource_group_name = "${azurerm_resource_group.RG1.name}"
  address_space       = ["10.0.0.0/16"]

  tags = {
    environment = "Production"
  }
}
# creating subnets
resource "azurerm_subnet" "vnet1-subnet-1" {
  name                 = "${azurerm_virtual_network.vnet1.name}-subnet-1"
  resource_group_name  = "${azurerm_resource_group.RG1.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet1.name}"
  address_prefixes      = "10.0.1.0/24"
}
resource "azurerm_subnet" "vnet1-subnet-2" {
  name                 = "${azurerm_virtual_network.vnet1.name}-subnet-2"
  resource_group_name  = "${azurerm_resource_group.RG1.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet1.name}"
  address_prefixes       = "10.0.2.0/24"
}