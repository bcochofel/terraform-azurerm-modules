provider "azurerm" {
  features {}
}

# Create (and display) an SSH key
resource "tls_private_key" "example_ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

module "network" {
  source = "../../modules/vnet"

  rg_name  = "rg-base-example-001"
  location = "northeurope"

  custom_tags = {
    Environment = "example"
  }

  ddos_protection_plan_name = "ddospp-base-example-001"
  vnet_name                 = "vnet-base-example-001"
  address_space             = "10.0.0.0/16"
}

module "bastion" {
  source = "../../modules/bastion_vm"

  rg_name  = "rg-bastion-example-001"
  location = module.network.location

  custom_tags = {
    Environment = "example"
  }

  vnet_name = module.network.vnet_name
  vnet_rg   = module.network.rg_name

  nic_name           = "nic-bastion-example-001"
  nsg_name           = "nsg-bastion-example-001"
  pip_name           = "pip-bastion-example-001"
  snet_name          = "snet-bastion-example-001"
  snet_addr_prefixes = "10.0.1.0/24"
  vm_name            = "vm-bastion-example-001"

  admin_ssh_key = {
    username   = "adminuser"
    public_key = tls_private_key.example_ssh.public_key_openssh
  }
}
