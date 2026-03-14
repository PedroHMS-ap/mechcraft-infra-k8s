variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "tenant_id" {
  description = "Azure tenant ID"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group for AKS resources"
  type        = string
  default     = "mechcraft-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central US"
}

variable "cluster_name" {
  description = "AKS cluster name"
  type        = string
  default     = "mechcraft-aks"
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
  default     = "mechcraft-vnet"
}

variable "subnet_name" {
  description = "AKS subnet name"
  type        = string
  default     = "mechcraft-aks-subnet"
}

variable "node_count" {
  description = "AKS node count"
  type        = number
  default     = 1
}

variable "node_size" {
  description = "AKS VM size"
  type        = string
  default     = "Standard_DC2s_v3"
}
