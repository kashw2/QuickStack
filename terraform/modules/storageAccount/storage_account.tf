resource "azurerm_storage_account" "backend" {
  account_replication_type = "LRS"
  account_tier             = "Standard"
  location                 = var.location
  name                     = "backendfn"
  resource_group_name      = var.resource_group_name
}