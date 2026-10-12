output "current_user_lookup_id" {
  description = "Map of id values across all current_user_lookup, keyed the same as var.current_user_lookup except keys with no id are omitted"
  value       = { for k, v in data.tfe_current_user.current_user_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "current_user_lookup_email" {
  description = "Map of email values across all current_user_lookup, keyed the same as var.current_user_lookup except keys with no email are omitted"
  value       = { for k, v in data.tfe_current_user.current_user_lookup : k => v.email if v.email != null && length(v.email) > 0 }
}
output "current_user_lookup_is_service_account" {
  description = "Map of is_service_account values across all current_user_lookup, keyed the same as var.current_user_lookup except keys with no is_service_account are omitted"
  value       = { for k, v in data.tfe_current_user.current_user_lookup : k => v.is_service_account if v.is_service_account != null }
}
output "current_user_lookup_username" {
  description = "Map of username values across all current_user_lookup, keyed the same as var.current_user_lookup except keys with no username are omitted"
  value       = { for k, v in data.tfe_current_user.current_user_lookup : k => v.username if v.username != null && length(v.username) > 0 }
}

