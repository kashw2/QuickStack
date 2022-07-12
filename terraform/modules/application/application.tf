module "b2c" {
  source = "./b2c"

  providers = {
    azuread = azuread.b2c
  }

}

provider "azuread" {
  tenant_id = var.b2c_tenant_id
  alias     = "b2c"
}