
########### Resource Group ###############
resource "azurerm_resource_group" "rg_block" {
  name     = "${var.prefixname}-${var.rg_name}"
  location = var.location
}

