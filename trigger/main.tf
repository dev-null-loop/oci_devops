resource "oci_devops_trigger" "this" {
  dynamic "actions" {
    for_each = var.actions
    iterator = ac
    content {
      build_pipeline_id = ac.value.build_pipeline_id
      type              = ac.value.type
      dynamic "filter" {
        for_each = ac.value.filter[*]
        iterator = fi
        content {
          trigger_source = fi.value.trigger_source
          events         = fi.value.events
          dynamic "exclude" {
            for_each = fi.value.exclude[*]
            iterator = ex
            content {
              dynamic "file_filter" {
                for_each = ex.value.file_filter[*]
                iterator = ff
                content {
                  file_paths = ff.value.file_paths
                }
              }
            }
          }
          dynamic "include" {
            for_each = fi.value.include[*]
            iterator = inc
            content {
              base_ref = inc.value.base_ref
              dynamic "file_filter" {
                for_each = inc.value.file_filter[*]
                iterator = ff
                content {
                  file_paths = ff.value.file_paths
                }
              }
              head_ref        = inc.value.head_ref
              repository_name = inc.value.repository_name
            }
          }
        }
      }
    }
  }
  project_id     = var.project_id
  trigger_source = var.trigger_source
  connection_id  = var.connection_id
  defined_tags   = var.defined_tags
  description    = var.description
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  repository_id  = var.repository_id
}
