terraform {
  required_version = "~>2.0.3"
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
  }
}
