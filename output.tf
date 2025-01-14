output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "vnet_name" {
  value = azurerm_virtual_network.main.name
}

output "vnet_id" {
  value = azurerm_virtual_network.main.id
}

output "web_subnet_id" {
  value = azurerm_subnet.web.id
}

output "app_subnet_id" {
  value = azurerm_subnet.app.id
}

output "db_subnet_id" {
  value = azurerm_subnet.db.id
}

output "web_nsg_id" {
  value = azurerm_network_security_group.web.id
}

output "app_nsg_id" {
  value = azurerm_network_security_group.app.id
}

output "db_nsg_id" {
  value = azurerm_network_security_group.db.id
}

output "route_table_id" {
  value = azurerm_route_table.main.id
}

output "storage_account_suffix" {
  value = random_string.storage_account_suffix.result
}