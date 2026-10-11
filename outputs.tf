output "apigateway_subscribers_id" {
  description = "Map of id values across all apigateway_subscribers, keyed the same as var.apigateway_subscribers except keys with no id are omitted"
  value       = { for k, v in oci_apigateway_subscriber.apigateway_subscribers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigateway_subscribers_clients" {
  description = "Map of clients values across all apigateway_subscribers, keyed the same as var.apigateway_subscribers except keys with no clients are omitted"
  value       = { for k, v in oci_apigateway_subscriber.apigateway_subscribers : k => v.clients if v.clients != null && length(v.clients) > 0 }
}
output "apigateway_subscribers_compartment_id" {
  description = "Map of compartment_id values across all apigateway_subscribers, keyed the same as var.apigateway_subscribers except keys with no compartment_id are omitted"
  value       = { for k, v in oci_apigateway_subscriber.apigateway_subscribers : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "apigateway_subscribers_defined_tags" {
  description = "Map of defined_tags values across all apigateway_subscribers, keyed the same as var.apigateway_subscribers except keys with no defined_tags are omitted"
  value       = { for k, v in oci_apigateway_subscriber.apigateway_subscribers : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "apigateway_subscribers_display_name" {
  description = "Map of display_name values across all apigateway_subscribers, keyed the same as var.apigateway_subscribers except keys with no display_name are omitted"
  value       = { for k, v in oci_apigateway_subscriber.apigateway_subscribers : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apigateway_subscribers_freeform_tags" {
  description = "Map of freeform_tags values across all apigateway_subscribers, keyed the same as var.apigateway_subscribers except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_apigateway_subscriber.apigateway_subscribers : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "apigateway_subscribers_is_lock_override" {
  description = "Map of is_lock_override values across all apigateway_subscribers, keyed the same as var.apigateway_subscribers except keys with no is_lock_override are omitted"
  value       = { for k, v in oci_apigateway_subscriber.apigateway_subscribers : k => v.is_lock_override if v.is_lock_override != null }
}
output "apigateway_subscribers_lifecycle_details" {
  description = "Map of lifecycle_details values across all apigateway_subscribers, keyed the same as var.apigateway_subscribers except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_apigateway_subscriber.apigateway_subscribers : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "apigateway_subscribers_locks" {
  description = "Map of locks values across all apigateway_subscribers, keyed the same as var.apigateway_subscribers except keys with no locks are omitted"
  value       = { for k, v in oci_apigateway_subscriber.apigateway_subscribers : k => v.locks if v.locks != null && length(v.locks) > 0 }
}
output "apigateway_subscribers_state" {
  description = "Map of state values across all apigateway_subscribers, keyed the same as var.apigateway_subscribers except keys with no state are omitted"
  value       = { for k, v in oci_apigateway_subscriber.apigateway_subscribers : k => v.state if v.state != null && length(v.state) > 0 }
}
output "apigateway_subscribers_system_tags" {
  description = "Map of system_tags values across all apigateway_subscribers, keyed the same as var.apigateway_subscribers except keys with no system_tags are omitted"
  value       = { for k, v in oci_apigateway_subscriber.apigateway_subscribers : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "apigateway_subscribers_time_created" {
  description = "Map of time_created values across all apigateway_subscribers, keyed the same as var.apigateway_subscribers except keys with no time_created are omitted"
  value       = { for k, v in oci_apigateway_subscriber.apigateway_subscribers : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "apigateway_subscribers_time_updated" {
  description = "Map of time_updated values across all apigateway_subscribers, keyed the same as var.apigateway_subscribers except keys with no time_updated are omitted"
  value       = { for k, v in oci_apigateway_subscriber.apigateway_subscribers : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "apigateway_subscribers_usage_plans" {
  description = "Map of usage_plans values across all apigateway_subscribers, keyed the same as var.apigateway_subscribers except keys with no usage_plans are omitted"
  value       = { for k, v in oci_apigateway_subscriber.apigateway_subscribers : k => v.usage_plans if v.usage_plans != null && length(v.usage_plans) > 0 }
}

