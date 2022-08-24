terraform {
  experiments = [module_variable_optional_attrs]
}

variable "domain" {
  type        = string
  description = "domain name for DNS zone lookup"
}

variable "record_list" {
  type = map(object(
    {
      name     = string,
      value    = string,
      type     = string,
      priority = optional(string),
      proxied  = optional(bool),
      ttl      = optional(string),
    }
  ))
  description = "Collection of records indexed by a generated key."
}

output "domain" {
    value = var.domain
}

output "record_list" {
    value = var.record_list
}
