##########################
#    Project Variables   #
##########################

variable "environment" {
  description = ""
  type        = string
  default     = "default"
}

variable "rg_name" {
  description = ""
  type        = string
  default     = "default"
}

variable "rg_location" {
  description = ""
  type        = string
  default     = "eastus2"
}

############
#    AKS   #
############

variable "aksName" {
  description = ""
  type        = string
  default     = "default"
}

variable "dns_prefix" {
  description = ""
  type        = string
  default     = "default"
}

variable "nodePoolName" {
  description = ""
  type        = string
  default     = "default"
}

variable "nodeCount" {
  description = ""
  type        = number
  default     = 1
}