output "lb_nat_pools" {
  description = "All lb_nat_pool resources"
  value       = azurerm_lb_nat_pool.lb_nat_pools
}
output "lb_nat_pools_backend_port" {
  description = "List of backend_port values across all lb_nat_pools"
  value       = [for k, v in azurerm_lb_nat_pool.lb_nat_pools : v.backend_port]
}
output "lb_nat_pools_floating_ip_enabled" {
  description = "List of floating_ip_enabled values across all lb_nat_pools"
  value       = [for k, v in azurerm_lb_nat_pool.lb_nat_pools : v.floating_ip_enabled]
}
output "lb_nat_pools_frontend_ip_configuration_id" {
  description = "List of frontend_ip_configuration_id values across all lb_nat_pools"
  value       = [for k, v in azurerm_lb_nat_pool.lb_nat_pools : v.frontend_ip_configuration_id]
}
output "lb_nat_pools_frontend_ip_configuration_name" {
  description = "List of frontend_ip_configuration_name values across all lb_nat_pools"
  value       = [for k, v in azurerm_lb_nat_pool.lb_nat_pools : v.frontend_ip_configuration_name]
}
output "lb_nat_pools_frontend_port_end" {
  description = "List of frontend_port_end values across all lb_nat_pools"
  value       = [for k, v in azurerm_lb_nat_pool.lb_nat_pools : v.frontend_port_end]
}
output "lb_nat_pools_frontend_port_start" {
  description = "List of frontend_port_start values across all lb_nat_pools"
  value       = [for k, v in azurerm_lb_nat_pool.lb_nat_pools : v.frontend_port_start]
}
output "lb_nat_pools_idle_timeout_in_minutes" {
  description = "List of idle_timeout_in_minutes values across all lb_nat_pools"
  value       = [for k, v in azurerm_lb_nat_pool.lb_nat_pools : v.idle_timeout_in_minutes]
}
output "lb_nat_pools_loadbalancer_id" {
  description = "List of loadbalancer_id values across all lb_nat_pools"
  value       = [for k, v in azurerm_lb_nat_pool.lb_nat_pools : v.loadbalancer_id]
}
output "lb_nat_pools_name" {
  description = "List of name values across all lb_nat_pools"
  value       = [for k, v in azurerm_lb_nat_pool.lb_nat_pools : v.name]
}
output "lb_nat_pools_protocol" {
  description = "List of protocol values across all lb_nat_pools"
  value       = [for k, v in azurerm_lb_nat_pool.lb_nat_pools : v.protocol]
}
output "lb_nat_pools_resource_group_name" {
  description = "List of resource_group_name values across all lb_nat_pools"
  value       = [for k, v in azurerm_lb_nat_pool.lb_nat_pools : v.resource_group_name]
}
output "lb_nat_pools_tcp_reset_enabled" {
  description = "List of tcp_reset_enabled values across all lb_nat_pools"
  value       = [for k, v in azurerm_lb_nat_pool.lb_nat_pools : v.tcp_reset_enabled]
}

