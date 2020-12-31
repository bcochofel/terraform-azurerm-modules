## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.20 |
| azurerm | >= 2.41.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.41.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| account\_kind | Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2.<br>Changing this forces a new resource to be created.<br><br>\*\*NOTES:\*\* Changing the account\_kind value from Storage to StorageV2 will not trigger<br>a force new on the storage account, it will only upgrade the existing storage account<br>from Storage to StorageV2 keeping the existing storage account in place. | `string` | `"StorageV2"` | no |
| account\_replication\_type | Defines the type of replication to use for this storage account.<br>Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS. | `string` | `"LRS"` | no |
| account\_tier | Defines the Tier to use for this storage account.<br>Valid options are Standard and Premium.<br>For BlockBlobStorage and FileStorage accounts only Premium is valid.<br>Changing this forces a new resource to be created. | `string` | `"Standard"` | no |
| containers | List of containers to create and their access levels. | <pre>list(object({<br>    name        = string,<br>    access_type = string<br>  }))</pre> | `[]` | no |
| custom\_tags | Custom tags that will be merged with the default tags. | `map(string)` | `{}` | no |
| name | Specifies the name of the storage account.<br>Changing this forces a new resource to be created.<br>This must be unique across the entire Azure service, not just within the resource group. | `string` | n/a | yes |
| resource\_group\_name | The name of the resource group in which to create the storage account.<br>Changing this forces a new resource to be created. | `string` | n/a | yes |
| tags | A mapping of tags which should be assigned to the Resource Group. | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| st\_containers | Containers created. |
| st\_id | Id of the storage account created. |
| st\_name | Name of the storage account created. |
| st\_tags | Storage Account tags. |
