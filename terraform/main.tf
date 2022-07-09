module "bootstrap" {
  source = "./modules/bootstrap"
}

module "resource_group" {
  source     = "./modules/resourceGroup"
  depends_on = [module.bootstrap]
}

module "service_plan" {
  source              = "./modules/servicePlan"
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  depends_on          = [module.bootstrap, module.resource_group]
}

module "app_service" {
  source              = "./modules/appService"
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  service_plan_id     = module.service_plan.id
  registry_password   = var.GITHUB_TOKEN
  depends_on          = [module.bootstrap, module.resource_group, module.service_plan]
}

module "storage_account" {
  source = "./modules/storageAccount"
  location = module.resource_group.location
  resource_group_name = module.resource_group.name
  depends_on = [module.bootstrap, module.resource_group]
}

module "cosmos" {
  source              = "./modules/cosmos"
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  depends_on          = [module.bootstrap, module.resource_group]
}
