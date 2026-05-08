resource "oci_devops_project_repository_setting" "this" {
  project_id = var.project_id
  dynamic "approval_rules" {
    for_each = var.approval_rules[*]
    iterator = ar
    content {
      dynamic "items" {
        for_each = ar.value.items
        iterator = it
        content {
          min_approvals_count = it.value.min_approvals_count
          name                = it.value.name
          destination_branch  = it.value.destination_branch
          dynamic "reviewers" {
            for_each = it.value.reviewers
            iterator = re
            content {
              principal_id = re.value.principal_id
            }
          }
        }
      }
    }
  }
  dynamic "merge_settings" {
    for_each = var.merge_settings[*]
    iterator = ms
    content {
      allowed_merge_strategies = ms.value.allowed_merge_strategies
      default_merge_strategy   = ms.value.default_merge_strategy
    }
  }
}
