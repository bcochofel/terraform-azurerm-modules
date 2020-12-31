## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.20 |
| azurerm | >= 2.41.0 |
| random | >= 3.0.0 |
| tls | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.41.0 |
| random | >= 3.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| admin\_ssh\_key | Administrator credentials. | `map(string)` | <pre>{<br>  "public_key": "",<br>  "username": "adminuser"<br>}</pre> | no |
| custom\_tags | Custom tags that will be merged with the default tags. | `map(string)` | `{}` | no |
| location | Azure Location to create the resources. | `string` | n/a | yes |
| nic\_name | Network Interface name. | `string` | n/a | yes |
| nsg\_name | Network Security Group name. | `string` | n/a | yes |
| os\_disk | Type of disk for the OS. | `map(string)` | <pre>{<br>  "caching": "ReadWrite",<br>  "storage_account_type": "Standard_LRS"<br>}</pre> | no |
| pip\_alloc\_method | Defines the allocation method for this IP address. | `string` | `"Static"` | no |
| pip\_name | Public IP name. | `string` | n/a | yes |
| pip\_sku | The SKU of the Public IP. | `string` | `"Basic"` | no |
| privip\_address\_allocation | The allocation method used for the Private IP Address. | `string` | `"Dynamic"` | no |
| rg\_name | Name of the Resource Group to create. | `string` | n/a | yes |
| snet\_addr\_prefixes | The address prefixes to use for the subnet. | `string` | n/a | yes |
| snet\_name | Name of the Subnet. | `string` | n/a | yes |
| tags | A mapping of tags which should be assigned to the Resource Group. | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |
| vm\_image | Source Image for the Linux. | `map(string)` | <pre>{<br>  "offer": "UbuntuServer",<br>  "publisher": "Canonical",<br>  "sku": "18.04-LTS",<br>  "version": "latest"<br>}</pre> | no |
| vm\_name | Virtual Machine name. | `string` | n/a | yes |
| vm\_size | Specifies the size of the Virtual Machine. | `string` | `"Standard_DS1_v2"` | no |
| vnet\_name | Name of the Virtual Network. | `string` | n/a | yes |
| vnet\_rg | vNet Resource Group name. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| public\_ip | Publi IP address. |
| vm\_name | Virtual Machine name. |
