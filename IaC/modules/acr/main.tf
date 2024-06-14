resource "azurerm_container_registry" "acr" {
  name                = "${var.environment}${var.acrName}"
  resource_group_name = var.rg_name
  location            = var.rg_location
  sku                 = var.skuName
  admin_enabled       = false
}
