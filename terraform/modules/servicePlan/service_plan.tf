resource "azurerm_service_plan" "free" {
  location            = var.location
  name                = "free"
  os_type             = "Linux"
  resource_group_name = var.free_resource_group_name
  sku_name            = "F1"
}

resource "azurerm_service_plan" "consumption" {
  name                = "consumption"
  resource_group_name = var.consumption_resource_group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "Y1"
}