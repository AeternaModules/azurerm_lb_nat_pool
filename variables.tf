variable "lb_nat_pools" {
  description = <<EOT
Map of lb_nat_pools, attributes below
Required:
    - backend_port
    - frontend_ip_configuration_name
    - frontend_port_end
    - frontend_port_start
    - loadbalancer_id
    - name
    - protocol
    - resource_group_name
Optional:
    - floating_ip_enabled
    - idle_timeout_in_minutes
    - tcp_reset_enabled
EOT

  type = map(object({
    backend_port                   = number
    frontend_ip_configuration_name = string
    frontend_port_end              = number
    frontend_port_start            = number
    loadbalancer_id                = string
    name                           = string
    protocol                       = string
    resource_group_name            = string
    floating_ip_enabled            = optional(bool)
    idle_timeout_in_minutes        = optional(number)
    tcp_reset_enabled              = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.lb_nat_pools : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_nat_pools : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_nat_pools : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_nat_pools : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_nat_pools : (
        length(v.frontend_ip_configuration_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_nat_pools : (
        v.idle_timeout_in_minutes == null || (v.idle_timeout_in_minutes >= 4 && v.idle_timeout_in_minutes <= 30)
      )
    ])
    error_message = "must be between 4 and 30"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

