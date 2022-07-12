# Terraform

This directory holds all Terraform IaC.

QuickStack provides Terraform configuration that facilitates the stand up of infrastructure that is both scalable and on
budget. Considerations have been made to allow easy upscaling of resources provided in Azure while also providing a
solid foundation for most early business use cases.

## Requirements

| Name                                    | Description                                  | Version |
|-----------------------------------------|----------------------------------------------|---------|
| [Terraform](https://www.terraform.io/)  | Provisions all resources in our IaC          | 1.0.0+  |
| Azure CLI                               | Facilitates interaction with Azure via a CLI | 2.0.0+  |

## Authentication

---

### Azure

To authenticate with Azure and set the environment variables required to interact with the `azurerm` and `azuread`
providers, run the `az login` command and follow the presented steps. After this, you should be authenticated with
Azure. In multi tenant and subscription scenarios you will have to set the subscription you wish to work with. 
This can be done by running `az account set --subscription="YourSubscriptionName""`