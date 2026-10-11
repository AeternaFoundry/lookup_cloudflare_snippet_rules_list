variable "snippet_rules_list_lookup" {
  description = <<EOT
Map of snippet_rules_list_lookup, attributes below
Required:
    - zone_id
Optional:
    - max_items
EOT

  type = map(object({
    zone_id   = string
    max_items = optional(number)
  }))
}

