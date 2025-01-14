# All these variables can be managed dynamically depending on the requirement
#Approach 1
# If using terraform enterprise you can set environment varial

variable "environment" {
  description = "Environment name"
  type = string
  default = "prod"
}

variable "location" {
  description = "Azure Region"
  type = string
  default = "eastus" 
}

variable "address_space" {
  description = "Vnet address space"
  type = string
  default = "10.0.0.0/16"
}

variable "company_name" {
  description = "Company name for resource naming"
  type        = string
  default     = "aijaz"
}

variable "project_name" {
  description = "Project name for resource naming"
  type        = string
  default     = "automateinf"
}