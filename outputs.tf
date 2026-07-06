output "logic_app_trigger_http_requests" {
  description = "All logic_app_trigger_http_request resources"
  value       = azurerm_logic_app_trigger_http_request.logic_app_trigger_http_requests
}
output "logic_app_trigger_http_requests_callback_url" {
  description = "List of callback_url values across all logic_app_trigger_http_requests"
  value       = [for k, v in azurerm_logic_app_trigger_http_request.logic_app_trigger_http_requests : v.callback_url]
}
output "logic_app_trigger_http_requests_logic_app_id" {
  description = "List of logic_app_id values across all logic_app_trigger_http_requests"
  value       = [for k, v in azurerm_logic_app_trigger_http_request.logic_app_trigger_http_requests : v.logic_app_id]
}
output "logic_app_trigger_http_requests_method" {
  description = "List of method values across all logic_app_trigger_http_requests"
  value       = [for k, v in azurerm_logic_app_trigger_http_request.logic_app_trigger_http_requests : v.method]
}
output "logic_app_trigger_http_requests_name" {
  description = "List of name values across all logic_app_trigger_http_requests"
  value       = [for k, v in azurerm_logic_app_trigger_http_request.logic_app_trigger_http_requests : v.name]
}
output "logic_app_trigger_http_requests_relative_path" {
  description = "List of relative_path values across all logic_app_trigger_http_requests"
  value       = [for k, v in azurerm_logic_app_trigger_http_request.logic_app_trigger_http_requests : v.relative_path]
}
output "logic_app_trigger_http_requests_schema" {
  description = "List of schema values across all logic_app_trigger_http_requests"
  value       = [for k, v in azurerm_logic_app_trigger_http_request.logic_app_trigger_http_requests : v.schema]
}

