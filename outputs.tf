output "rg_name" {
  value = { for rg in azurerm_resource_group.rg : rg.name => rg.name }
  description = "value of the resource group name"
}

output "rg_tags" {
  value = values({ for k, v in azurerm_resource_group.rg : k => v.tags })
  description = "value of the resource group tags"
}

output "rg_id" {
  value = values({ for k, v in azurerm_resource_group.rg : k => v.id })
  description = "value of the resource group id"
}

output "all" {
  value = azurerm_resource_group.rg
  description = "all resource group details"
}

output "rg_location" {
  value       = { for k, rg in azurerm_resource_group.rg : k => rg.location }
  description = "The location of each resource group"
}