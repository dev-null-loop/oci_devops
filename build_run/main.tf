resource "oci_devops_build_run" "this" {
  build_pipeline_id = var.build_pipeline_id
  dynamic "build_run_arguments" {
    for_each = var.build_run_arguments[*]
    iterator = bra
    content {
      dynamic "items" {
        for_each = bra.value.items
        iterator = it
        content {
          name  = it.value.name
          value = it.value.value
        }
      }
    }
  }
  dynamic "commit_info" {
    for_each = var.commit_info[*]
    iterator = ci
    content {
      commit_hash       = ci.value.commit_hash
      repository_branch = ci.value.repository_branch
      repository_url    = ci.value.repository_url
    }
  }
  defined_tags  = var.defined_tags
  display_name  = var.display_name
  freeform_tags = var.freeform_tags
}
