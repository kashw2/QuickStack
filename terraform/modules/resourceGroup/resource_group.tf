resource "azurerm_resource_group" "free" {
  location = "East US"
  name     = "free-group"
}

resource "azurerm_resource_group" "consumption" {
  location = "East US"
  name     = "consumption-group"
}