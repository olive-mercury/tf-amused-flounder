terraform {
  required_version = ">= 0.15"

  backend "azurerm" {

  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.58"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.1"
    }
  }
}