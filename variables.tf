variable "apigateway_subscribers" {
  description = <<EOT
Map of apigateway_subscribers, attributes below
Required:
    - compartment_id
    - usage_plans
    - clients (block):
        - name (required)
        - token (required)
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - is_lock_override
    - locks (block):
        - message (optional)
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id   = string
    usage_plans      = list(string)
    defined_tags     = optional(map(string))
    display_name     = optional(string)
    freeform_tags    = optional(map(string))
    is_lock_override = optional(bool)
    clients = list(object({
      name  = string
      token = string
    }))
    locks = optional(list(object({
      message = optional(string)
      type    = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.apigateway_subscribers : (
        length(v.clients) >= 1
      )
    ])
    error_message = "Each clients list must contain at least 1 items"
  }
}

