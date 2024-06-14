terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.107.0"
    }
  }
}

provider "azurerm" {
    features {}
  # Configuration options
}

resource "azurerm_resource_group" "rg" {
  name                      = "rg-${var.rg_name}-${var.environment}"
  location                  = var.rg_location
}

module "test_acr" {
  source                    = "./modules/acr"
  environment               = var.environment
  rg_name                   = azurerm_resource_group.rg.name
  rg_location               = azurerm_resource_group.rg.location
  acrName                   = var.acrName
  skuName                   = var.skuName
}

module "test_aks" {
  source                    = "./modules/aks"
  environment               = var.environment
  rg_name                   = azurerm_resource_group.rg.name
  rg_location               = azurerm_resource_group.rg.location
  aksName                   = var.aksName
  dns_prefix                = var.dns_prefix
  nodePoolName              = var.nodePoolName
  nodeCount                 = var.nodeCount

  depends_on = [module.test_acr]
}