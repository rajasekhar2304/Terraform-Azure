resource "azurerm_virtual_network" "vnet1" {
  name                = "${azurerm_resource_group.RG1.name}-vnet1"
  location            = "${azurerm_resource_group.RG1.location}"
  resource_group_name = "${azurerm_resource_group.RG1.name}"
  address_space       = [var.vnet1_address_space]

  tags = {
    environment = var.environment
  }
}
# creating subnets
resource "azurerm_subnet" "vnet1-subnet-1" {
  name                 = "${azurerm_virtual_network.vnet1.name}-subnet-1"
  resource_group_name  = "${azurerm_resource_group.RG1.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet1.name}"
  address_prefixes      = [var.vnet1_subnet1_cidr]
}
resource "azurerm_subnet" "vnet1-subnet-2" {
  name                 = "${azurerm_virtual_network.vnet1.name}-subnet-2"
  resource_group_name  = "${azurerm_resource_group.RG1.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet1.name}"
  address_prefixes       = [var.vnet1_subnet2_cidr]
}
resource "azurerm_subnet" "vnet1-subnet-3" {
  name                 = "${azurerm_virtual_network.vnet1.name}-subnet-3"
  resource_group_name  = "${azurerm_resource_group.RG1.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet1.name}"
  address_prefixes       = [var.vnet1_subnet3_cidr]
}