resource "google_network_connectivity_hub_iam_member" "network_connectivity_hub_iam_members" {
  for_each = var.network_connectivity_hub_iam_members

  hub     = each.value.hub
  member  = each.value.member
  role    = each.value.role
  project = each.value.project

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

