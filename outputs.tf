output "snippet_rules_list_lookup_max_items" {
  description = "Map of max_items values across all snippet_rules_list_lookup, keyed the same as var.snippet_rules_list_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_snippet_rules_list.snippet_rules_list_lookup : k => v.max_items if v.max_items != null }
}
output "snippet_rules_list_lookup_result" {
  description = "Map of result values across all snippet_rules_list_lookup, keyed the same as var.snippet_rules_list_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_snippet_rules_list.snippet_rules_list_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "snippet_rules_list_lookup_zone_id" {
  description = "Map of zone_id values across all snippet_rules_list_lookup, keyed the same as var.snippet_rules_list_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_snippet_rules_list.snippet_rules_list_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

