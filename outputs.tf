output "lb_nat_pools_backend_port" {
  description = "Map of backend_port values across all lb_nat_pools, keyed the same as var.lb_nat_pools"
  value       = { for k, v in azurerm_lb_nat_pool.lb_nat_pools : k => v.backend_port }
}
output "lb_nat_pools_floating_ip_enabled" {
  description = "Map of floating_ip_enabled values across all lb_nat_pools, keyed the same as var.lb_nat_pools"
  value       = { for k, v in azurerm_lb_nat_pool.lb_nat_pools : k => v.floating_ip_enabled }
}
output "lb_nat_pools_frontend_ip_configuration_id" {
  description = "Map of frontend_ip_configuration_id values across all lb_nat_pools, keyed the same as var.lb_nat_pools"
  value       = { for k, v in azurerm_lb_nat_pool.lb_nat_pools : k => v.frontend_ip_configuration_id }
}
output "lb_nat_pools_frontend_ip_configuration_name" {
  description = "Map of frontend_ip_configuration_name values across all lb_nat_pools, keyed the same as var.lb_nat_pools"
  value       = { for k, v in azurerm_lb_nat_pool.lb_nat_pools : k => v.frontend_ip_configuration_name }
}
output "lb_nat_pools_frontend_port_end" {
  description = "Map of frontend_port_end values across all lb_nat_pools, keyed the same as var.lb_nat_pools"
  value       = { for k, v in azurerm_lb_nat_pool.lb_nat_pools : k => v.frontend_port_end }
}
output "lb_nat_pools_frontend_port_start" {
  description = "Map of frontend_port_start values across all lb_nat_pools, keyed the same as var.lb_nat_pools"
  value       = { for k, v in azurerm_lb_nat_pool.lb_nat_pools : k => v.frontend_port_start }
}
output "lb_nat_pools_idle_timeout_in_minutes" {
  description = "Map of idle_timeout_in_minutes values across all lb_nat_pools, keyed the same as var.lb_nat_pools"
  value       = { for k, v in azurerm_lb_nat_pool.lb_nat_pools : k => v.idle_timeout_in_minutes }
}
output "lb_nat_pools_loadbalancer_id" {
  description = "Map of loadbalancer_id values across all lb_nat_pools, keyed the same as var.lb_nat_pools"
  value       = { for k, v in azurerm_lb_nat_pool.lb_nat_pools : k => v.loadbalancer_id }
}
output "lb_nat_pools_name" {
  description = "Map of name values across all lb_nat_pools, keyed the same as var.lb_nat_pools"
  value       = { for k, v in azurerm_lb_nat_pool.lb_nat_pools : k => v.name }
}
output "lb_nat_pools_protocol" {
  description = "Map of protocol values across all lb_nat_pools, keyed the same as var.lb_nat_pools"
  value       = { for k, v in azurerm_lb_nat_pool.lb_nat_pools : k => v.protocol }
}
output "lb_nat_pools_resource_group_name" {
  description = "Map of resource_group_name values across all lb_nat_pools, keyed the same as var.lb_nat_pools"
  value       = { for k, v in azurerm_lb_nat_pool.lb_nat_pools : k => v.resource_group_name }
}
output "lb_nat_pools_tcp_reset_enabled" {
  description = "Map of tcp_reset_enabled values across all lb_nat_pools, keyed the same as var.lb_nat_pools"
  value       = { for k, v in azurerm_lb_nat_pool.lb_nat_pools : k => v.tcp_reset_enabled }
}

