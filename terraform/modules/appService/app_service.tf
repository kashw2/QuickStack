resource "azurerm_linux_web_app" "client" {
  location            = var.location
  name                = "quickstack-client"
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  https_only = true

  site_config {

    // Required for Free Tier / F1
    use_32_bit_worker = true

    always_on = false
    health_check_path = "/"
    load_balancing_mode = "WeightedRoundRobin"

    cors {
      allowed_origins = ["*"]
    }

  }

  app_settings = {
    DOCKER_REGISTRY_SERVER_URL = "https://ghcr.io"
    DOCKER_REGISTRY_SERVER_USERNAME = "kashw2"
    DOCKER_REGISTRY_SERVER_PASSWORD = var.registry_password
  }

  logs {

    application_logs {
      file_system_level = "Verbose"
    }

    http_logs {
      file_system {
        retention_in_days = 30
        retention_in_mb = 100
      }
    }

    detailed_error_messages = true
    failed_request_tracing = true
  }
}