################ Output ###################
output "rg_name" {
  value = azurerm_resource_group.rg_block.name
}

output "location" {
  value = azurerm_resource_group.rg_block.location
}

output "dept_public_ip_1" {
  value = azurerm_public_ip.public_ip_1.ip_address
}

output "nic_1" {
  value = azurerm_network_interface.main_nic_1.id
}


/*

output "dept_public_ip_2" {
  value = azurerm_public_ip.public_ip_2.ip_address
}
output "nic_2" {
  value = azurerm_network_interface.main_nic_2.id
}
*/