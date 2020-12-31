output "st_id" {
  description = "Id of the storage account created."
  value       = azurerm_storage_account.st.id
}

output "st_name" {
  description = "Name of the storage account created."
  value       = azurerm_storage_account.st.name
}

output "st_containers" {
  description = "Containers created."
  value       = azurerm_storage_container.sc[*].name
}

output "st_tags" {
  description = "Storage Account tags."
  value       = azurerm_storage_account.st.tags
}
