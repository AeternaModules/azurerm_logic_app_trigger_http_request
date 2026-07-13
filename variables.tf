variable "logic_app_trigger_http_requests" {
  description = <<EOT
Map of logic_app_trigger_http_requests, attributes below
Required:
    - logic_app_id
    - name
    - schema
Optional:
    - method
    - relative_path
EOT

  type = map(object({
    logic_app_id  = string
    name          = string
    schema        = string
    method        = optional(string)
    relative_path = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.logic_app_trigger_http_requests : (
        can(jsondecode(v.schema))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

