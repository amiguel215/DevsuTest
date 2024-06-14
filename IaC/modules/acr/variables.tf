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

#################################
#    Azure Container Registry   #
#################################

variable "acrName" {
  description = ""
  type        = string
  default     = "default"
}

variable "skuName" {
  description = ""
  type        = string
  default     = "Basic"
}