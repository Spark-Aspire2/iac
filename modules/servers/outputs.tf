output "vm_name" {
  value = azurerm_windows_virtual_machine.vm_1_block.name
}

output "vm_public_ip" {
  value = azurerm_windows_virtual_machine.vm_1_block.public_ip_address
}