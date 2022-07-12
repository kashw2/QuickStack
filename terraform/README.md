# Terraform

This directory holds all Terraform IaC.

This directory is split up into two different but important segments. B2C (Business to Consumer / Client) and B2B
(Business to Business).

Currently, provisioning of all infrastructure is a two-step process.

1) Create all B2B Infrastructure
2) Create all B2C Infrastructure

## Requirements

### Technology

| Name                                    | Description                                  | Version |
|-----------------------------------------|----------------------------------------------|---------|
| [Terraform](https://www.terraform.io/)  | Provisions all resources in our IaC          | 1.0.0+  |
| Azure CLI                               | Facilitates interaction with Azure via a CLI | 2.0.0+  |

### Environment Variables

| Name               | Description                                       |
|--------------------|---------------------------------------------------|
| AZ_CLIENT_ID       | Azure Client Id                                   |
| AZ_CLIENT_SECRET   | Azure Client Secret                               |
| AZ_SUBSCRIPTION_ID | The Id of the Subscription running Terraform over |
| AZ_TENANT_ID       | The tenant / directory id in Azure                |
| GH_TOKEN           | GitHub Personal Access Token                      |

## Authentication

---

### Azure

To authenticate with Azure and set the environment variables required to interact with the `azurerm` and `azuread`
providers, run the `az login` command and follow the presented steps. After this, you should be authenticated with
Azure. In multi tenant and subscription scenarios you will have to set the subscription you wish to work with.
This can be done by running `az account set --subscription="YourSubscriptionName""`