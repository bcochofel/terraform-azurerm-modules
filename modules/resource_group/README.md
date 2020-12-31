# Azure Resource Group

This module creates Azure Resource Group.

Check [examples/resource_group](../../examples/resource_group/main.tf) folder for more info.

**NOTES:** Custom tags can be passed to the module and will be merged with the default ones.

## Version Compatibility

| Module version | Terraform version | AzureRM version |
| -------------- | ----------------- | --------------- |
| >= 1.0.0 | >= 0.12.20 | >= 2.41.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| custom\_tags | Custom tags that will be merged with the default tags. | `map(string)` | `{}` | no |
| location | The Azure Region where the Resource Group should exist.<br>Changing this forces a new Resource Group to be created. | `string` | `"North Europe"` | no |
| name | The Name which should be used for this Resource Group.<br>Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| tags | A mapping of tags which should be assigned to the Resource Group. | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| rg\_location | Resource Group location. |
| rg\_name | Resource Group name. |
| rg\_tags | Resource Group tags. |
