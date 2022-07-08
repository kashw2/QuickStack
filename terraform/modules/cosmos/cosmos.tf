module "account" {
  source              = "./account"
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "database" {
  source              = "./database"
  account_name        = module.account.name
  resource_group_name = var.resource_group_name
  depends_on          = [module.account]
}

module "container" {
  source              = "./container"
  account_name        = module.account.name
  database_name       = module.database.name
  resource_group_name = var.resource_group_name
  depends_on          = [module.account, module.database]
}