
########### Network Interface ###############
resource "azurerm_network_interface" "main_nic_1" {
  name                = "${azurerm_subnet.subnet_1_block.name}-main-nic-1"
  location            = azurerm_resource_group.rg_block.location
  resource_group_name = azurerm_resource_group.rg_block.name

  ip_configuration {
    name                          = "${azurerm_subnet.subnet_1_block.name}-main-nic-1-ip-configuration"
    subnet_id                     = azurerm_subnet.subnet_1_block.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.public_ip_1.id
  }
}
/*
resource "azurerm_network_interface" "main_nic_2" {
  name                = "${azurerm_subnet.subnet_1_block.name}-main-nic-2"
  location            = azurerm_resource_group.rg_block.location
  resource_group_name = azurerm_resource_group.rg_block.name

  ip_configuration {
    name                          = "${azurerm_subnet.subnet_1_block.name}-main-nic-2-ip-configuration"
    subnet_id                     = azurerm_subnet.subnet_1_block.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.public_ip_2.id
  }
}
*/