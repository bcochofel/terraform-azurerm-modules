# Azure Storage Account

This module creates Azure Storage Account and Containers.

Check [examples/storage_account](../../examples/storage_account/main.tf) for more info.

**NOTES:**
* This module depends on a previously create Resource Group
* Custom tags can be passed to the module and will be merged with the default ones.

## Version Compatibility

| Module version | Terraform version | AzureRM version |
| -------------- | ----------------- | --------------- |
| \>= 1.0.0 | \>= 0.12.20 | \>= 2.41.0 |
