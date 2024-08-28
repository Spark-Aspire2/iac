module "dev_network" {
    source = "github.com/Spark-Aspire2/iac/modules/network"
    prefixname= "dev"
    rg_name = "rg" 
    location = "Australia East"
    vnet_name = var.vnet_1_name
    vnet_1_cidr =  var.vnet_1_cidr
    subnet_name = var.subnet_name
    subnet_cidr= var.subnet_cidr
}

module "vm" {
    source = "github.com/Spark-Aspire2/iac/modules/servers"
    location = module.dev_network.location
    rg_name = module.dev_network.rg_name
    nic = [module.dev_network.nic_1]
    virtual_machine_1_name = var.virtual_machine_1_name
    admin_username = var.admin_username
    admin_password = var.admin_password
    time_zone = var.time_zone    
}



