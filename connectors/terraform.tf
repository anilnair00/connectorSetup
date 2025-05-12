terraform {
  required_version = ">=1.9"
  backend "azurerm" {
    use_oidc             = true                                    # Can also be set via `ARM_USE_OIDC` environment variable.
    use_azuread_auth     = true                                    # Can also be set via `ARM_USE_AZUREAD` environment variable.
    resource_group_name  = "Testvm_group"
    storage_account_name = "testvmgroupb7e2"
    container_name       = "tfstate"
    key                  = "test.tfstate"
  }
  required_providers {
    harness = {
      source = "harness/harness"
      version = "0.24.2"  
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}
