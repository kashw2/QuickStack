resource "azurerm_cosmosdb_account" "account" {
  location            = var.location
  name                = "quickstack"
  offer_type          = "Standard"
  resource_group_name = var.resource_group_name
  kind                = "GlobalDocumentDB"

  consistency_policy {
    consistency_level = "BoundedStaleness"
  }

  geo_location {
    failover_priority = 0
    location          = var.location
  }

}