terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.14.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.26.1"
    }
  }
  backend "azurerm" {
    storage_account_name = "quickstack"
    resource_group_name  = "infrastructure"
    container_name       = "terraform"
    key                  = "b2b.tfstate"
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

