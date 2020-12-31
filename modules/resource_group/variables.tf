variable "location" {
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  type        = string
}

variable "name" {
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
  type        = string
}

variable "tags" {
  description = "A mapping of tags which should be assigned to the Resource Group."
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
  }
}

variable "custom_tags" {
  description = "Custom tags that will be merged with the default tags."
  type        = map(string)
  default     = {}
}

variable "lock_level" {
  description = "Specifies the Level to be used for this RG Lock. Possible values are Empty (no lock), CanNotDelete and ReadOnly."
  type        = string
  default     = ""
}
