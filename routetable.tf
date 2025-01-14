resource "azurerm_route_table" "main" {
  name                = "${local.resource_name_prefix}-rt"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  route {
    name                   = "internet"
    address_prefix         = "0.0.0.0/0"
    next_hop_type         = "Internet"
  }

  tags = local.common_tags
}