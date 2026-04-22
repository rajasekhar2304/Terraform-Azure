# Storage account for state file
resource "azurerm_storage_account" "azb48prodtfstate" {
  name                     = "azb48prodtfstate"
  resource_group_name      = "Terraform-RG"
  location                 = "centralindia"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Production"
  }
}

resource "azurerm_storage_container" "azb48prodtfstate" {
  name                  = "tfstate"
  storage_account_id  = azurerm_storage_account.azb48prodtfstate.id
  container_access_type = "private"
}