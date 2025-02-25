variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "aks-resource-group"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "cluster_name" {
  description = "AKS cluster name"
  type        = string
  default     = "myAKSCluster"
}

variable "node_count" {
  description = "Number of worker nodes"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "VM size for the nodes"
  type        = string
  default     = "Standard_DS2_v2"
}

