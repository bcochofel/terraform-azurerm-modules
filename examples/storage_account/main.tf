provider "azurerm" {
  features {}
}

module "rg" {
  source = "../../modules/resource_group"

  name     = "rg-example-001"
  location = "northeurope"
}

module "st" {
  source = "../../modules/storage_account"

  resource_group_name = module.rg.rg_name
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
