resource "oci_devops_deploy_environment" "this" {
  deploy_environment_type = var.deploy_environment_type
  project_id              = var.project_id
  cluster_id              = var.cluster_id
  dynamic "compute_instance_group_selectors" {
    for_each = var.compute_instance_group_selectors[*]
    iterator = cigs
    content {
      dynamic "items" {
        for_each = cigs.value.items != null ? cigs.value.items : []
        iterator = it
        content {
          selector_type        = it.value.selector_type
          compute_instance_ids = it.value.compute_instance_ids
          query                = it.value.query
          region               = it.value.region
        }
      }
    }
  }
  defined_tags  = var.defined_tags
  description   = var.description
  display_name  = var.display_name
  freeform_tags = var.freeform_tags
  function_id   = var.function_id
  dynamic "network_channel" {
    for_each = var.network_channel[*]
    iterator = nc
    content {
      network_channel_type = nc.value.network_channel_type
      subnet_id            = nc.value.subnet_id
      nsg_ids              = nc.value.nsg_ids
    }
  }
  security_attributes = var.security_attributes
}
