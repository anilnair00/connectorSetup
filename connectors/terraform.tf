terraform {
  required_version = ">= 1.9"
  backend "azurerm" {
    resource_group_name  = "Testvm_group"
    storage_account_name = "testvmgroupb7e2"
    container_name       = "tfstate"
    key                  = "test.tfstate"
  }
  required_providers {
    harness = {
      source = "harness/harness"
    }
    azurerm = {
      feature {}
      client_id       = "084f318f-40aa-4d40-93ea-5ed3472b66bc"
      client_secret   = "UxS8Q~xZ6gqVHJlJlDbvM~-3BpEWwMmFpetXaaLD"
      tenant_id       = "abec7981-3822-4685-98b0-533aca20c2ed"
      subscription_id = "ee902f6d-01a9-4a32-8c5f-af9403e6c766"

    }
  }
}
