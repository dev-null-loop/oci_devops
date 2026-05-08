resource "oci_devops_deployment" "this" {
  deploy_pipeline_id = var.deploy_pipeline_id
  deployment_type    = var.deployment_type
  defined_tags       = var.defined_tags
  dynamic "deploy_artifact_override_arguments" {
    for_each = var.deploy_artifact_override_arguments[*]
    iterator = daoa
    content {
      dynamic "items" {
        for_each = daoa.value.items != null ? daoa.value.items : []
        iterator = it
        content {
          deploy_artifact_id = it.value.deploy_artifact_id
          name               = it.value.name
          value              = it.value.value
        }
      }
    }
  }
  deploy_stage_id = var.deploy_stage_id
  dynamic "deploy_stage_override_arguments" {
    for_each = var.deploy_stage_override_arguments[*]
    iterator = dsoa
    content {
      dynamic "items" {
        for_each = dsoa.value.items != null ? dsoa.value.items : []
        iterator = it
        content {
          deploy_stage_id = it.value.deploy_stage_id
          name            = it.value.name
          value           = it.value.value
        }
      }
    }
  }
  dynamic "deployment_arguments" {
    for_each = var.deployment_arguments[*]
    iterator = da
    content {
      dynamic "items" {
        for_each = da.value.items != null ? da.value.items : []
        iterator = it
        content {
          name  = it.value.name
          value = it.value.value
        }
      }
    }
  }
  display_name                  = var.display_name
  freeform_tags                 = var.freeform_tags
  previous_deployment_id        = var.previous_deployment_id
  trigger_new_devops_deployment = var.trigger_new_devops_deployment
}
