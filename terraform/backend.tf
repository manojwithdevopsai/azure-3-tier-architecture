terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "manoj" 
    container_name       = "tfstate" 
    key                  = "3tier/dev.terraform.tfstate"
  }
}

# Dummy change to trigger workflow
