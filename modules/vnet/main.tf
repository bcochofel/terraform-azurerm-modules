# resource group
resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = var.rg_name
  tags     = merge(var.tags, var.custom_tags)
}

# DDoS protection plan
resource "azurerm_network_ddos_protection_plan" "ddospplan" {
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  name                = var.ddos_protection_plan_name
  tags                = merge(var.tags, var.custom_tags)
}

# virtual network
resource "azurerm_virtual_network" "vnet" {
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  name                = var.vnet_name
  address_space       = [var.address_space]
  dns_servers         = var.dns_servers

  ddos_protection_plan {
    id     = azurerm_network_ddos_protection_plan.ddospplan.id
    enable = true
  }

  tags = merge(var.tags, var.custom_tags)
}
