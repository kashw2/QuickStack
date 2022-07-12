output "service_principal_id" {
  value = azuread_service_principal.terraform.id
}

output "service_principal_object_id" {
  value = azuread_service_principal.terraform.object_id
}