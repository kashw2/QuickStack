output "name" {
  value = azurerm_storage_account.backend.name
}

output "access_key" {
  value = azurerm_storage_account.backend.primary_access_key
}