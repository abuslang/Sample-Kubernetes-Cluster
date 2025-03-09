terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~>2.23"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~>2.10"
    }
  }
  required_version = ">= 1.0"
}

provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = "rg"
  location = "Central US"
  tags = {
    Environment = "Development"
    Purpose     = "Prisma Cloud Security Testing"
  }
}
