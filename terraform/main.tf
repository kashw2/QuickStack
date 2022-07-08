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