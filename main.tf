resource "gitlab_application" "applications" {
  for_each = var.applications

  name         = each.value.name
  redirect_url = each.value.redirect_url
  scopes       = each.value.scopes
  confidential = each.value.confidential
}

