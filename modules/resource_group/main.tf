resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = var.name
  tags     = merge(var.tags, var.custom_tags)
}

resource "azurerm_management_lock" "rg-lock" {
  count = var.lock_level == "" ? 0 : 1

  name       = "${var.name}-level-lock"
  scope      = azurerm_resource_group.rg.id
  lock_level = var.lock_level
  notes      = "Resource Group '${var.name}' is locked with '${var.lock_level}' level."
}
