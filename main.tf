resource "random_string" "storage_account_suffix" {
  length  = 6
  special = false
  upper   = false
  numeric = true
  lower   = true
  min_numeric = 2
}

resource "azurerm_resource_group" "main" {
  name     = "${local.resource_name_prefix}-rg"
  location = var.location
  tags     = local.common_tags
}

resource "azurerm_virtual_network" "main" {
  name                = "${local.resource_name_prefix}-vnet"
  address_space       = [var.address_space]
  location           = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  tags               = local.common_tags
}