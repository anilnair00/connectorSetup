provider "harness" {
  endpoint         = var.TF_VAR_HARNESS_ENDPOINT
  account_id       = var.TF_VAR_HARNESS_ACCOUNT_ID
  platform_api_key = var.TF_VAR_HARNESS_PLATFORM_API_KEY
}
provider "azurerm" {
  use_oidc        = true
  client_id       = "084f318f-40aa-4d40-93ea-5ed3472b66bc"
  client_secret   = "UxS8Q~xZ6gqVHJlJlDbvM~-3BpEWwMmFpetXaaLD"
#  tenant_id       = "abec7981-3822-4685-98b0-533aca20c2ed"
#  subscription_id = "ee902f6d-01a9-4a32-8c5f-af9403e6c766"
  features {}
}

