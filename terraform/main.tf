module "bootstrap" {
  source = "./modules/bootstrap"
}

module "resource_group" {
  source = "./modules/resourceGroup"
  depends_on = [module.bootstrap]
}