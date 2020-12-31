provider "azurerm" {
  features {}
}

module "rg" {
  source = "../../modules/resourceGroup"

  name     = "rg-example-001"
  location = "northeurope"
}
