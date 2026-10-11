data "cloudflare_snippet_rules_list" "snippet_rules_list_lookup" {
  for_each = var.snippet_rules_list_lookup

  zone_id   = each.value.zone_id
  max_items = each.value.max_items
}

