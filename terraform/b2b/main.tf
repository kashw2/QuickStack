module "bootstrap" {
  source = "./modules/bootstrap"
}

module "resource_group" {
  source     = "./modules/resourceGroup"
  depends_on = [module.bootstrap]
}

module "active_directory_b2c" {
  source              = "./modules/activeDirectoryB2C"
  resource_group_name = module.resource_group.free_name
  depends_on          = [module.resource_group]
}

module "service_plan" {
  source                          = "./modules/servicePlan"
  location                        = module.resource_group.free_location
  consumption_resource_group_name = module.resource_group.consumption_name
  free_resource_group_name        = module.resource_group.free_name
  depends_on                      = [module.bootstrap, module.resource_group]
}

module "app_service" {
  source              = "./modules/appService"
  location            = module.resource_group.free_location
  resource_group_name = module.resource_group.free_name
  service_plan_id     = module.service_plan.free_id
  registry_password   = var.GITHUB_TOKEN
  depends_on          = [module.bootstrap, module.resource_group, module.service_plan]
}

module "storage_account" {
  source                          = "./modules/storageAccount"
  location                        = module.resource_group.free_location
  free_resource_group_name        = module.resource_group.free_name
  consumption_resource_group_name = module.resource_group.consumption_name
  depends_on                      = [module.bootstrap, module.resource_group]
}

module "function_app" {
  source                     = "./modules/functionApp"
  location                   = module.resource_group.consumption_location
  resource_group_name        = module.resource_group.consumption_name
  service_plan_id            = module.service_plan.consumption_id
  storage_account_access_key = module.storage_account.access_key
  storage_account_name       = module.storage_account.name
  depends_on                 = [module.bootstrap, module.resource_group, module.service_plan]
}

module "cosmos" {
  source              = "./modules/cosmos"
  location            = module.resource_group.free_location
  resource_group_name = module.resource_group.free_name
  depends_on          = [module.bootstrap, module.resource_group]
}