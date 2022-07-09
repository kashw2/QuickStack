resource "azurerm_linux_function_app" "backend" {
  location                   = var.location
  name                       = "quickstack-backend"
  resource_group_name        = var.resource_group_name
  service_plan_id            = var.service_plan_id
  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key
  site_config {}
}