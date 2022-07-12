terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.13.0"
    }
  }
#  backend "azurerm" {
#    storage_account_name = "quickstack"
#    resource_group_name  = "infrastructure"
#    container_name       = "terraform-state-container"
#    key                  = "terraform.tfstate"
#  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

