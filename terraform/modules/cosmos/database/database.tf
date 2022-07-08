resource "azurerm_cosmosdb_sql_database" "database" {
  account_name        = var.account_name
  name                = "quickstack"
  resource_group_name = var.resource_group_name
}