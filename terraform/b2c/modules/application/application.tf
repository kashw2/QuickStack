resource "azuread_application" "client" {
  display_name = "Client"

  sign_in_audience = "AzureADandPersonalMicrosoftAccount"

  privacy_statement_url = "https://localhost:4200/privacy"
  terms_of_service_url  = "https://localhost:4200/terms"
  marketing_url         = "https://localhost:4200/"
  support_url           = "https://localhost:4200/help"

  api {
    requested_access_token_version = 2
  }

  web {
    redirect_uris = ["http://localhost:4200/"]
    implicit_grant {
      access_token_issuance_enabled = false
      id_token_issuance_enabled     = false
    }
  }

  fallback_public_client_enabled = false

  /**
  For info regarding resource access, reference the Microsoft Graph documentation.
  For information on Scopes run az ad sp list --display-name "Microsoft Graph"
  */

  required_resource_access {
    resource_app_id = "00000003-0000-0000-c000-000000000000"

    // openid
    resource_access {
      id   = "37f7f235-527c-4136-accd-4a02d197296e"
      type = "Scope"
    }

    // offline_access
    resource_access {
      id   = "7427e0e9-2fba-42fe-b0c0-848c9e6a8182"
      type = "Scope"
    }

    // User.Read
    resource_access {
      id   = "e1fe6dd8-ba31-4d61-89e7-88639da4683d"
      type = "Scope"
    }

  }

  lifecycle {
    ignore_changes = [owners]
  }


}
