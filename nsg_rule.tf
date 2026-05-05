resource "azurerm_network_security_rule" "rg1-nsg1-allow-all" {
  name                        = "allow-all"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.RG1.name
  network_security_group_name = azurerm_network_security_group.rg1-nsg1.name
}

resource "azurerm_subnet_network_security_group_association" "subnet-1" {
  subnet_id                 = azurerm_subnet.vnet1-subnet-1.id
  network_security_group_id = azurerm_network_security_group.rg1-nsg1.id
}
resource "azurerm_subnet_network_security_group_association" "subnet-2" {
  subnet_id                 = azurerm_subnet.vnet1-subnet-2.id
  network_security_group_id = azurerm_network_security_group.rg1-nsg1.id
}
resource "azurerm_subnet_network_security_group_association" "subnet-3" {
  subnet_id                 = azurerm_subnet.vnet1-subnet-3.id
  network_security_group_id = azurerm_network_security_group.rg1-nsg1.id
}