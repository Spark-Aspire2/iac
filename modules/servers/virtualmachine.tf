
########### Virtual Machine Windows Server 2019 ###############
resource "azurerm_windows_virtual_machine" "vm_1_block" {
  name                  = var.virtual_machine_1_name
  location              = var.location
  resource_group_name   = var.rg_name
  network_interface_ids = var.nic
  size               = "Standard_B1s"

  admin_username = var.admin_username
  admin_password = var.admin_password 
  computer_name = var.virtual_machine_1_name
  timezone = var.time_zone
  
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }

  /*
    source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-datacenter-azure-edition"
    version   = "latest"
  }


  */
}
