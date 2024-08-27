
variable "prefixname" {
    description = "prefix name added to all variables."
    default = "iac"
}

variable "rg_name" {
    description = "resource group name"
    default  =  "rg"
}

variable "location" {
    description = "location of resource group"
    default = "Australia East"
}

variable "vnet_1_cidr" {
    description = "Network range"
    default =  ["10.10.0.0/16"]
}

variable "vnet_name" {
  
}

variable "subnet_name" {
  
}
variable "subnet_cidr" {
    #default = [["10.10.0.0/24"],["10.10.1.0/24"]]
}


/*
variable "subnet_1_cidr" {
    description = "subnet range"
    default =  ["10.10.1.0/24"]
}

variable "subnet_2_cidr" {
    description = "subnet range"
    default =  ["10.10.2.0/24"]
}
*/