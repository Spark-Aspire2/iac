
########### Network Security Group ###############
resource "azurerm_network_security_group" "nsg_1_block" {
  name                = "${var.prefixname}-nsg-1"
  location            = azurerm_resource_group.rg_block.location
  resource_group_name = azurerm_resource_group.rg_block.name

  security_rule {
    name                       = "RDP"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    #access                     = "Deny"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Production"
  }
}


resource "azurerm_network_interface_security_group_association" "nic_nsg_association" {
  network_interface_id      = azurerm_network_interface.main_nic_1.id
  network_security_group_id = azurerm_network_security_group.nsg_1_block.id
}


/*
resource "azurerm_network_security_group" "nsg_2_block" {
  name                = "${var.prefixname}-nsg-2"
  location            = azurerm_resource_group.rg_block.location
  resource_group_name = azurerm_resource_group.rg_block.name

  security_rule {
    name                       = "RDP"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    #access                     = "Deny"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Production"
  }
}
resource "azurerm_subnet_network_security_group_association" "subnet_nsg_association" {
  subnet_id      = azurerm_subnet.subnet_1_block.id
  network_security_group_id = azurerm_network_security_group.nsg_2_block.id
}
*/