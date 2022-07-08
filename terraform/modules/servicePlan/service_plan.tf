resource "azurerm_service_plan" "free" {
  location            = var.location
  name                = "free"
  os_type             = "Linux"
  resource_group_name = var.resource_group_name
  sku_name            = "FREE"
}