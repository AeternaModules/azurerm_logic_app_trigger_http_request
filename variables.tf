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
  # --- Unconfirmed validation candidates, derived from azurerm_logic_app_trigger_http_request's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: logic_app_id
  #   source:    [from workflows.ValidateWorkflowID] !ok
  # path: logic_app_id
  #   source:    [from workflows.ValidateWorkflowID] err != nil
  # path: schema
  #   source:    validation.StringIsJSON(...) - no translation rule yet, add one
  # path: method
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: relative_path
  #   source:    [from validate.TriggerHttpRequestRelativePath] !regexp.MustCompile("^[A-Za-z0-9_/}{]+$").MatchString(value)
}

