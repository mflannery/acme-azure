# Configure the Azure provider
terraform {
  cloud {
    organization = "mikedemo1"

    workspaces {
      name = "Acme-azure"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "AcmeResourceGroup"
  location = "eastus2"
}
