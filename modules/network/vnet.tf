

########### Virtual Network ###############
resource "azurerm_virtual_network" "vnet_1_block" {
  name = "${var.prefixname}-vnet-1"
  location            = azurerm_resource_group.rg_block.location
  resource_group_name = azurerm_resource_group.rg_block.name
  address_space       = var.vnet_1_cidr

  tags = {
    environment = "test"
  }
}

########### Virtual Network 1 - Subnet 1 ###########
resource "azurerm_subnet" "subnet_1_block" {
  name = "${var.prefixname}-${var.vnet_name}-${var.subnet_name[0]}"
  resource_group_name  = azurerm_resource_group.rg_block.name
  virtual_network_name = azurerm_virtual_network.vnet_1_block.name
  address_prefixes     = var.subnet_cidr[0]
}

########### Virtual Network 1 - Subnet 2 ###############
resource "azurerm_subnet" "subnet_2_block" {
  name = "${var.prefixname}-${var.vnet_name}-${var.subnet_name[0]}"
  resource_group_name  = azurerm_resource_group.rg_block.name
  virtual_network_name = azurerm_virtual_network.vnet_1_block.name
  address_prefixes     = var.subnet_cidr[1]
}

