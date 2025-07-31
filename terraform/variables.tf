variable "location" {
  description = "Azure region for resource deployment"
  type        = string
}

variable "rg_name" {
  description = "Resource group name"
  type        = string
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
}

variable "vm_name" {
  description = "Virtual machine name"
  type        = string
}

variable "vm_username" {
  description = "VM admin username"
  type        = string
  sensitive   = true
}

variable "vm_password" {
  description = "VM admin password"
  type        = string
  sensitive   = true
}

