output "logic_app_trigger_http_requests_id" {
  description = "Map of id values across all logic_app_trigger_http_requests, keyed the same as var.logic_app_trigger_http_requests"
  value       = { for k, v in azurerm_logic_app_trigger_http_request.logic_app_trigger_http_requests : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logic_app_trigger_http_requests_callback_url" {
  description = "Map of callback_url values across all logic_app_trigger_http_requests, keyed the same as var.logic_app_trigger_http_requests"
  value       = { for k, v in azurerm_logic_app_trigger_http_request.logic_app_trigger_http_requests : k => v.callback_url if v.callback_url != null && length(v.callback_url) > 0 }
}
output "logic_app_trigger_http_requests_logic_app_id" {
  description = "Map of logic_app_id values across all logic_app_trigger_http_requests, keyed the same as var.logic_app_trigger_http_requests"
  value       = { for k, v in azurerm_logic_app_trigger_http_request.logic_app_trigger_http_requests : k => v.logic_app_id if v.logic_app_id != null && length(v.logic_app_id) > 0 }
}
output "logic_app_trigger_http_requests_method" {
  description = "Map of method values across all logic_app_trigger_http_requests, keyed the same as var.logic_app_trigger_http_requests"
  value       = { for k, v in azurerm_logic_app_trigger_http_request.logic_app_trigger_http_requests : k => v.method if v.method != null && length(v.method) > 0 }
}
output "logic_app_trigger_http_requests_name" {
  description = "Map of name values across all logic_app_trigger_http_requests, keyed the same as var.logic_app_trigger_http_requests"
  value       = { for k, v in azurerm_logic_app_trigger_http_request.logic_app_trigger_http_requests : k => v.name if v.name != null && length(v.name) > 0 }
}
output "logic_app_trigger_http_requests_relative_path" {
  description = "Map of relative_path values across all logic_app_trigger_http_requests, keyed the same as var.logic_app_trigger_http_requests"
  value       = { for k, v in azurerm_logic_app_trigger_http_request.logic_app_trigger_http_requests : k => v.relative_path if v.relative_path != null && length(v.relative_path) > 0 }
}
output "logic_app_trigger_http_requests_schema" {
  description = "Map of schema values across all logic_app_trigger_http_requests, keyed the same as var.logic_app_trigger_http_requests"
  value       = { for k, v in azurerm_logic_app_trigger_http_request.logic_app_trigger_http_requests : k => v.schema if v.schema != null && length(v.schema) > 0 }
}

