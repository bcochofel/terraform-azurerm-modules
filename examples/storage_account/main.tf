provider "azurerm" {
  features {}
}

module "st" {
  source = "../../modules/storage_account"

  resource_group_name = "rg-example-001"
  name                = "stexample001"
  containers = [
    {
      name        = "scexample001"
      access_type = "private"
    },
  ]
}

output "st_name" {
  value = module.st.st_name
}

output "st_containers" {
  value = module.st.st_containers
}
