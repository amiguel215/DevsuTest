resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${var.environment}${var.aksName}"
  resource_group_name = var.rg_name 
  location            = var.rg_location
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = var.nodePoolName
    node_count = var.nodeCount
    vm_size    = "Standard_A2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
