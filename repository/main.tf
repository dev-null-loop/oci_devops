resource "oci_devops_repository" "this" {
  name            = var.name
  project_id      = var.project_id
  repository_type = var.repository_type
  default_branch  = var.default_branch
  defined_tags    = var.defined_tags
  description     = var.description
  freeform_tags   = var.freeform_tags
  dynamic "mirror_repository_config" {
    for_each = var.mirror_repository_config[*]
    iterator = mrc
    content {
      connector_id   = mrc.value.connector_id
      repository_url = mrc.value.repository_url
      dynamic "trigger_schedule" {
        for_each = mrc.value.trigger_schedule[*]
        iterator = ts
        content {
          schedule_type   = ts.value.schedule_type
          custom_schedule = ts.value.custom_schedule
        }
      }
    }
  }
  parent_repository_id = var.parent_repository_id
}
