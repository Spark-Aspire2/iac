
variable "prefixname" {
    description = "prefix name added to all variables."
    #default = "iac-telus"
}

variable "rg_name" {
    description = "resource group name"
    #default  =  "iac-telus-rg"
}

variable "location" {
    description = "location of resource group"
    default = "Australia East"
}

variable "vnet_1_name" {
    description = "name of network"
    #default = "iac-telus-vnet-1"  
}

variable "vnet_1_cidr" {
    description = "Network range"
    default =  ["10.10.0.0/16"]
}
variable "subnet_name" {
    #default = ["subnet-1","subnet-2"]
}
variable "subnet_cidr" {
    #default = [["10.10.0.0/24"],["10.10.1.0/24"]]
}

variable "admin_username" {
  
}
variable "admin_password" {
  
}

variable "public_ip_1_name" {
  
}

variable "network_interface_1_name" {
  
}

variable "virtual_machine_1_name" {
  
}
variable "virtual_machine_2_name" {
  
}
variable "time_zone" {
    default =  "New Zealand Standard Time"
}