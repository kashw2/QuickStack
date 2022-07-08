resource "azurerm_cosmosdb_sql_container" "users" {
  account_name        = var.account_name
  database_name       = var.database_name
  name                = "users"
  partition_key_path  = "/id"
  resource_group_name = var.resource_group_name
}