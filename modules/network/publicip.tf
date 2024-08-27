
##########################################
##### Spark Zheng 16/08/2024 #############
##########################################


########### Public  IP Address ###############
resource "azurerm_public_ip" "public_ip_1" {
  name = "${var.prefixname}-public-ip-1"
  resource_group_name = azurerm_resource_group.rg_block.name
  location = azurerm_resource_group.rg_block.location
  allocation_method = "Dynamic"
  #domain_name_label = "${var.prefixname}-server-1"
}

/*
########### Public  IP Address ###############
resource "azurerm_public_ip" "public_ip_2" {
  name = "${var.prefixname}-public-ip-2"
  resource_group_name = azurerm_resource_group.rg_block.name
  location = azurerm_resource_group.rg_block.location
  allocation_method = "Dynamic"
  #domain_name_label = "${var.prefixname}-server-1"
}
*/