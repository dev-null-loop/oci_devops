resource "oci_devops_build_pipeline" "this" {
  project_id = var.project_id
  dynamic "build_pipeline_parameters" {
    for_each = try(var.build_pipeline_parameters, [])
    iterator = bpp
    content {
      dynamic "items" {
	for_each = bpp.value
	content {
	  default_value = items.value.default_value
	  name          = items.value.name
	  description   = items.value.description
	}
      }
    }
  }
  defined_tags  = var.defined_tags
  description   = var.description
  display_name  = var.display_name
  freeform_tags = var.freeform_tags
}
