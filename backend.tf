terraform {
  backend "azurerm" {
    resource_group_name  = "info-infra"
    storage_account_name = "storageaccountinfra"
    container_name       = "tfstate"
    key                  = "my-app.tfstate"
  }
}