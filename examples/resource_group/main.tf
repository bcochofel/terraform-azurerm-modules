provider "azurerm" {
  features {}
}

module "rg" {
  source = "../../modules/resource_group"

  name     = "rg-example-001"
  location = "northeurope"
}

output "rg_name" {
  value = module.rg.rg_name
}
