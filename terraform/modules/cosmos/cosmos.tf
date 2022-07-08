module "account" {
  source = "./account"
  location = var.location
  resource_group_name = var.resource_group_name
}