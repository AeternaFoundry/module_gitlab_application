output "applications_id" {
  description = "Map of id values across all applications, keyed the same as var.applications except keys with no id are omitted"
  value       = { for k, v in gitlab_application.applications : k => v.id if v.id != null && length(v.id) > 0 }
}
output "applications_application_id" {
  description = "Map of application_id values across all applications, keyed the same as var.applications except keys with no application_id are omitted"
  value       = { for k, v in gitlab_application.applications : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
}
output "applications_confidential" {
  description = "Map of confidential values across all applications, keyed the same as var.applications except keys with no confidential are omitted"
  value       = { for k, v in gitlab_application.applications : k => v.confidential if v.confidential != null }
}
output "applications_name" {
  description = "Map of name values across all applications, keyed the same as var.applications except keys with no name are omitted"
  value       = { for k, v in gitlab_application.applications : k => v.name if v.name != null && length(v.name) > 0 }
}
output "applications_redirect_url" {
  description = "Map of redirect_url values across all applications, keyed the same as var.applications except keys with no redirect_url are omitted"
  value       = { for k, v in gitlab_application.applications : k => v.redirect_url if v.redirect_url != null && length(v.redirect_url) > 0 }
}
output "applications_scopes" {
  description = "Map of scopes values across all applications, keyed the same as var.applications except keys with no scopes are omitted"
  value       = { for k, v in gitlab_application.applications : k => v.scopes if v.scopes != null && length(v.scopes) > 0 }
}
output "applications_secret" {
  description = "Map of secret values across all applications, keyed the same as var.applications except keys with no secret are omitted"
  value       = { for k, v in gitlab_application.applications : k => v.secret if v.secret != null && length(v.secret) > 0 }
  sensitive   = true
}

