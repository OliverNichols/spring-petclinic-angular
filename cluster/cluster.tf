resource "azurerm_resource_group" "main" {
  name     = "${var.project_name}-rg"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "main" {
  name                = "${var.project_name}-aks1"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  dns_prefix          = "main"
  kubernetes_version = var.kubernetes_version

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = var.vm_size
    type = "VirtualMachineScaleSets"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id = var.serviceprinciple_id
    client_secret = var.serviceprinciple_key
  }

  linux_profile {
    admin_username = "azureuser"
    ssh_key{
        key_data = var.ssh_key
    }
  }

  network_profile {
    network_plugin = "kubenet"
    load_balancer_sku = "Standard"
  }
}