resource "oci_devops_build_pipeline" "this" {
  project_id = var.project_id
  dynamic "build_pipeline_parameters" {
    for_each = var.build_pipeline_parameters[*]
    iterator = bpp
    content {
      dynamic "items" {
        for_each = bpp.value.items
        iterator = it
        content {
          default_value = it.value.default_value
          name          = it.value.name
          description   = it.value.description
        }
      }
    }
  }
  defined_tags  = var.defined_tags
  description   = var.description
  display_name  = var.display_name
  freeform_tags = var.freeform_tags
}
