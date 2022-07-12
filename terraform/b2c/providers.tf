terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.26.1"
    }
  }
  backend "azurerm" {
    storage_account_name = "quickstack"
    resource_group_name  = "infrastructure"
    container_name       = "terraform"
    key                  = "b2c.tfstate"
  }
}

provider "azuread" {
}


provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

