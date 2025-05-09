provider "harness" {
  endpoint         = var.TF_VAR_HARNESS_ENDPOINT
  account_id       = var.TF_VAR_HARNESS_ACCOUNT_ID
  platform_api_key = var.TF_VAR_HARNESS_PLATFORM_API_KEY
}
provider "azurerm" {
  alias         = "rbac"
  client_id     = var.rbac_sp_client_id
  client_secret = var.rbac_sp_client_secret
  features {}
}

