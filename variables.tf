variable "applications" {
  description = <<EOT
Map of applications, attributes below
Required:
    - name
    - redirect_url
    - scopes
Optional:
    - confidential
EOT

  type = map(object({
    name         = string
    redirect_url = string
    scopes       = set(string)
    confidential = optional(bool)
  }))
}

