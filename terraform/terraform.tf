terraform {
  required_version = "~> 1.5"

  backend "azurerm" {
    resource_group_name  = "mo10serek-cst8918-tf-backend"
    storage_account_name = "3b36c431tfstorage"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.96.0"
    }
  }
}

provider "azurerm" {
  features {}
}