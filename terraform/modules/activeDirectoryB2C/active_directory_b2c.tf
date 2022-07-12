resource "azurerm_aadb2c_directory" "b2c" {
  data_residency_location = "United States"
  domain_name             = "quickstackb2c.onmicrosoft.com"
  resource_group_name     = var.resource_group_name
  sku_name                = "PremiumP1"
  country_code            = "US"
  display_name            = "Quickstack B2C"
}