resource "oci_devops_deploy_pipeline" "this" {
  project_id = var.project_id
  dynamic "deploy_pipeline_parameters" {
    for_each = var.deploy_pipeline_parameters[*]
    iterator = dpp
    content {
      dynamic "items" {
        for_each = dpp.value.items
        iterator = it
        content {
          name          = it.value.name
          default_value = it.value.default_value
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
