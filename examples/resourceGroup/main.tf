provider "azurerm" {
  features {}
}

module "rg" {
  source = "../../modules/resourceGroup"

  name     = "rg-example-001"
  location = "northeurope"
}

output "rg_name" {
  value = module.rg.rg_name
}
