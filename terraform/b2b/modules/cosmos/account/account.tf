resource "azurerm_cosmosdb_account" "account" {
  location            = var.location
  name                = "quickstack"
  offer_type          = "Standard"
  resource_group_name = var.resource_group_name

  kind = "GlobalDocumentDB"

  enable_free_tier = true

  consistency_policy {
    consistency_level = "Session"
  }

  geo_location {
    failover_priority = 0
    location          = var.location
  }

}