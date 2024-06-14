##########################
#    Project Variables   #
##########################

variable "environment" {
  description = ""
  type        = string
  default     = "test"
}

variable "rg_name" {
  description = ""
  type        = string
  default     = "Devsu"
}

variable "rg_location" {
  description = ""
  type        = string
  default     = "eastus2"
}

#################################
#    Azure Container Registry   #
#################################

variable "acrName" {
  description = ""
  type        = string
  default     = "acrDevsu"
}

variable "skuName" {
  description = ""
  type        = string
  default     = "Basic"
}

############
#    AKS   #
############

variable "aksName" {
  description = ""
  type        = string
  default     = "acr"
}

variable "dns_prefix" {
  description = ""
  type        = string
  default     = "testdnsDev"
}

variable "nodePoolName" {
  description = ""
  type        = string
  default     = "pooldevsu"
}

variable "nodeCount" {
  description = ""
  type        = number
  default     = 1
}