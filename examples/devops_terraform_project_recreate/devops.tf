module "project" {
  source         = "git@github.com:dev-null-loop/oci_devops//project"
  for_each       = var.projects
  compartment_id = var.compartment_ids[each.value.compartment_name]
  name           = each.value.name
  description    = each.value.description
  notification_config = {
    topic_id = each.value.notification_topic_id
  }
  defined_tags  = each.value.defined_tags
  freeform_tags = each.value.freeform_tags
}

module "connection" {
  source            = "git@github.com:dev-null-loop/oci_devops//connection"
  for_each          = var.connections
  project_id        = module.project[each.value.project_name].id
  connection_type   = each.value.connection_type
  access_token      = each.value.access_token
  app_password      = each.value.app_password
  base_url          = each.value.base_url
  description       = each.value.description
  display_name      = each.value.display_name
  tls_verify_config = each.value.tls_verify_config
  username          = each.value.username
  defined_tags      = each.value.defined_tags
  freeform_tags     = each.value.freeform_tags
}

module "repository" {
  source               = "git@github.com:dev-null-loop/oci_devops//repository"
  for_each             = var.repositories
  project_id           = module.project[each.value.project_name].id
  name                 = each.value.name
  repository_type      = each.value.repository_type
  default_branch       = each.value.default_branch
  description          = each.value.description
  parent_repository_id = each.value.parent_repository_id
  mirror_repository_config = each.value.mirror_repository_config != null ? {
    connector_id     = each.value.mirror_repository_config.connection_name != null ? module.connection[each.value.mirror_repository_config.connection_name].id : null
    repository_url   = each.value.mirror_repository_config.repository_url
    trigger_schedule = each.value.mirror_repository_config.trigger_schedule
  } : null
  defined_tags  = each.value.defined_tags
  freeform_tags = each.value.freeform_tags
}

module "build_pipeline" {
  source                    = "git@github.com:dev-null-loop/oci_devops//build_pipeline"
  for_each                  = var.build_pipelines
  project_id                = module.project[each.value.project_name].id
  build_pipeline_parameters = each.value.build_pipeline_parameters
  description               = each.value.description
  display_name              = each.value.display_name
  defined_tags              = each.value.defined_tags
  freeform_tags             = each.value.freeform_tags
}

module "build_pipeline_stage" {
  source            = "git@github.com:dev-null-loop/oci_devops//build_pipeline_stage"
  for_each          = var.build_pipeline_stages
  build_pipeline_id = module.build_pipeline[each.value.build_pipeline_name].id
  build_pipeline_stage_predecessor_collection = {
    items = [
      for pred in each.value.predecessors : {
        id = pred.type == "pipeline" ? module.build_pipeline[pred.name].id : module.build_pipeline_stage[pred.name].id
      }
    ]
  }
  build_pipeline_stage_type          = each.value.build_pipeline_stage_type
  build_runner_shape_config          = each.value.build_runner_shape_config
  build_source_collection            = local.build_source_collection_resolved[each.key]
  build_spec_file                    = each.value.build_spec_file
  deliver_artifact_collection        = each.value.deliver_artifact_collection
  deploy_pipeline_id                 = each.value.deploy_pipeline_id
  description                        = each.value.description
  display_name                       = each.value.display_name
  image                              = each.value.image
  is_pass_all_parameters_enabled     = each.value.is_pass_all_parameters_enabled
  primary_build_source               = each.value.primary_build_source
  private_access_config              = each.value.private_access_config
  stage_execution_timeout_in_seconds = each.value.stage_execution_timeout_in_seconds
  wait_criteria                      = each.value.wait_criteria
  defined_tags                       = each.value.defined_tags
  freeform_tags                      = each.value.freeform_tags
}

module "trigger" {
  source         = "git@github.com:dev-null-loop/oci_devops//trigger"
  for_each       = var.triggers
  project_id     = module.project[each.value.project_name].id
  trigger_source = each.value.trigger_source
  connection_id  = each.value.connection_name != null ? module.connection[each.value.connection_name].id : null
  repository_id  = each.value.repository_name != null ? module.repository[each.value.repository_name].id : null
  description    = each.value.description
  display_name   = each.value.display_name
  actions = [
    for action in each.value.actions : {
      build_pipeline_id = module.build_pipeline[action.build_pipeline_name].id
      type              = action.type
      filter            = action.filter
    }
  ]
  defined_tags  = each.value.defined_tags
  freeform_tags = each.value.freeform_tags
}
