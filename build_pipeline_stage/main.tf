resource "oci_devops_build_pipeline_stage" "this" {
  build_pipeline_id = var.build_pipeline_id
  build_pipeline_stage_predecessor_collection {
    dynamic "items" {
      for_each = var.build_pipeline_stage_predecessor_collection.items
      iterator = it
      content {
        id = it.value.id
      }
    }
  }
  build_pipeline_stage_type = var.build_pipeline_stage_type
  dynamic "build_runner_shape_config" {
    for_each = var.build_runner_shape_config[*]
    iterator = brsc
    content {
      build_runner_type = brsc.value.build_runner_type
      memory_in_gbs     = brsc.value.memory_in_gbs
      ocpus             = brsc.value.ocpus
    }
  }
  dynamic "build_source_collection" {
    for_each = var.build_source_collection[*]
    iterator = bsc
    content {
      dynamic "items" {
        for_each = bsc.value.items
        iterator = it
        content {
          connection_type = it.value.connection_type
          branch          = it.value.branch
          connection_id   = it.value.connection_id
          name            = it.value.name
          repository_id   = it.value.repository_id
          repository_url  = it.value.repository_url
        }
      }
    }
  }
  build_spec_file = var.build_spec_file
  defined_tags    = var.defined_tags
  dynamic "deliver_artifact_collection" {
    for_each = var.deliver_artifact_collection[*]
    iterator = dac
    content {
      dynamic "items" {
        for_each = dac.value.items
        iterator = it
        content {
          artifact_id   = it.value.artifact_id
          artifact_name = it.value.artifact_name
        }
      }
    }
  }
  deploy_pipeline_id             = var.deploy_pipeline_id
  description                    = var.description
  display_name                   = var.display_name
  freeform_tags                  = var.freeform_tags
  image                          = var.image
  is_pass_all_parameters_enabled = var.is_pass_all_parameters_enabled
  primary_build_source           = var.primary_build_source
  dynamic "private_access_config" {
    for_each = var.private_access_config[*]
    iterator = pac
    content {
      network_channel_type = pac.value.network_channel_type
      subnet_id            = pac.value.subnet_id
      nsg_ids              = pac.value.nsg_ids
    }
  }
  stage_execution_timeout_in_seconds = var.stage_execution_timeout_in_seconds
  dynamic "wait_criteria" {
    for_each = var.wait_criteria[*]
    iterator = wc
    content {
      wait_duration = wc.value.wait_duration
      wait_type     = wc.value.wait_type
    }
  }
}
