terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 3.0"
    }

    random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
  }
#   if you want to store your backend in storage account

#   backend "azurerm" {
#     resource_group_name = "terraform-state-rg"
#     storage_account_name = "tfstate${random_string.storage_account_suffix.result}"
#     container_name = "tfstate"
#     key = "prod.terraform.tfstate"
#   }
}

provider "azurerm" {
  features {}
}