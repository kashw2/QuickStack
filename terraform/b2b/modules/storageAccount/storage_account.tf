resource "azurerm_storage_account" "backend" {
  account_replication_type = "LRS"
  account_tier             = "Standard"
  location                 = var.location
  name                     = "backendfn"
  resource_group_name      = var.consumption_resource_group_name
  min_tls_version = "TLS1_2"
  queue_properties {
    logging {
      delete  = true
      read    = true
      version = "1.0"
      write   = true
    }
  }
}