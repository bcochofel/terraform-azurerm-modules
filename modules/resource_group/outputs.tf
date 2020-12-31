output "rg_name" {
  description = "Resource Group name."
  value       = azurerm_resource_group.rg.name
}

output "rg_location" {
  description = "Resource Group location."
  value       = azurerm_resource_group.rg.location
}

output "rg_tags" {
  description = "Resource Group tags."
  value       = azurerm_resource_group.rg.tags
}
