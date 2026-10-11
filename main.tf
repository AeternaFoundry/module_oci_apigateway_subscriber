resource "oci_apigateway_subscriber" "apigateway_subscribers" {
  for_each = var.apigateway_subscribers

  compartment_id   = each.value.compartment_id
  usage_plans      = each.value.usage_plans
  defined_tags     = each.value.defined_tags
  display_name     = each.value.display_name
  freeform_tags    = each.value.freeform_tags
  is_lock_override = each.value.is_lock_override

  dynamic "clients" {
    for_each = each.value.clients
    content {
      name  = clients.value.name
      token = clients.value.token
    }
  }

  dynamic "locks" {
    for_each = each.value.locks != null ? each.value.locks : []
    content {
      message = locks.value.message
      type    = locks.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

