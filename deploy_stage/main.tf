resource "oci_devops_deploy_stage" "this" {
  deploy_pipeline_id = var.deploy_pipeline_id
  dynamic "deploy_stage_predecessor_collection" {
    for_each = [var.deploy_stage_predecessor_collection]
    iterator = dspc
    content {
      dynamic "items" {
        for_each = dspc.value.items
        iterator = it
        content {
          id = it.value.id
        }
      }
    }
  }
  deploy_stage_type = var.deploy_stage_type
  dynamic "approval_policy" {
    for_each = var.approval_policy[*]
    iterator = ap
    content {
      approval_policy_type         = ap.value.approval_policy_type
      number_of_approvals_required = ap.value.number_of_approvals_required
    }
  }
  are_hooks_enabled = var.are_hooks_enabled
  dynamic "blue_backend_ips" {
    for_each = var.blue_backend_ips[*]
    iterator = bbi
    content {
      items = bbi.value.items != null ? bbi.value.items : []
    }
  }
  dynamic "blue_green_strategy" {
    for_each = var.blue_green_strategy[*]
    iterator = bgs
    content {
      ingress_name  = bgs.value.ingress_name
      namespace_a   = bgs.value.namespace_a
      namespace_b   = bgs.value.namespace_b
      strategy_type = bgs.value.strategy_type
    }
  }
  dynamic "canary_strategy" {
    for_each = var.canary_strategy[*]
    iterator = cs
    content {
      ingress_name  = cs.value.ingress_name
      namespace     = cs.value.namespace
      strategy_type = cs.value.strategy_type
    }
  }
  command_spec_deploy_artifact_id                              = var.command_spec_deploy_artifact_id
  compute_instance_group_blue_green_deployment_deploy_stage_id = var.compute_instance_group_blue_green_deployment_deploy_stage_id
  compute_instance_group_canary_deploy_stage_id                = var.compute_instance_group_canary_deploy_stage_id
  compute_instance_group_canary_traffic_shift_deploy_stage_id  = var.compute_instance_group_canary_traffic_shift_deploy_stage_id
  compute_instance_group_deploy_environment_id                 = var.compute_instance_group_deploy_environment_id
  config                                                       = var.config
  dynamic "container_config" {
    for_each = var.container_config[*]
    iterator = cc
    content {
      container_config_type = cc.value.container_config_type
      dynamic "network_channel" {
        for_each = cc.value.network_channel[*]
        iterator = nc
        content {
          network_channel_type = nc.value.network_channel_type
          subnet_id            = nc.value.subnet_id
          nsg_ids              = nc.value.nsg_ids
        }
      }
      dynamic "shape_config" {
        for_each = cc.value.shape_config[*]
        iterator = sc
        content {
          ocpus         = sc.value.ocpus
          memory_in_gbs = sc.value.memory_in_gbs
        }
      }
      shape_name          = cc.value.shape_name
      availability_domain = cc.value.availability_domain
      compartment_id      = cc.value.compartment_id
    }
  }
  defined_tags                       = var.defined_tags
  deploy_artifact_id                 = var.deploy_artifact_id
  deploy_artifact_ids                = var.deploy_artifact_ids
  deploy_environment_id_a            = var.deploy_environment_id_a
  deploy_environment_id_b            = var.deploy_environment_id_b
  deployment_spec_deploy_artifact_id = var.deployment_spec_deploy_artifact_id
  description                        = var.description
  display_name                       = var.display_name
  docker_image_deploy_artifact_id    = var.docker_image_deploy_artifact_id
  dynamic "failure_policy" {
    for_each = var.failure_policy[*]
    iterator = fp
    content {
      policy_type        = fp.value.policy_type
      failure_count      = fp.value.failure_count
      failure_percentage = fp.value.failure_percentage
    }
  }
  freeform_tags                  = var.freeform_tags
  function_deploy_environment_id = var.function_deploy_environment_id
  function_timeout_in_seconds    = var.function_timeout_in_seconds
  dynamic "green_backend_ips" {
    for_each = var.green_backend_ips[*]
    iterator = gbi
    content {
      items = gbi.value.items != null ? gbi.value.items : []
    }
  }
  helm_chart_deploy_artifact_id           = var.helm_chart_deploy_artifact_id
  helm_command_artifact_ids               = var.helm_command_artifact_ids
  is_async                                = var.is_async
  is_debug_enabled                        = var.is_debug_enabled
  is_force_enabled                        = var.is_force_enabled
  is_uninstall_on_stage_delete            = var.is_uninstall_on_stage_delete
  is_validation_enabled                   = var.is_validation_enabled
  kubernetes_manifest_deploy_artifact_ids = var.kubernetes_manifest_deploy_artifact_ids
  dynamic "load_balancer_config" {
    for_each = var.load_balancer_config[*]
    iterator = lbc
    content {
      backend_port     = lbc.value.backend_port
      listener_name    = lbc.value.listener_name
      load_balancer_id = lbc.value.load_balancer_id
    }
  }
  max_history                              = var.max_history
  max_memory_in_mbs                        = var.max_memory_in_mbs
  namespace                                = var.namespace
  oke_blue_green_deploy_stage_id           = var.oke_blue_green_deploy_stage_id
  oke_canary_deploy_stage_id               = var.oke_canary_deploy_stage_id
  oke_canary_traffic_shift_deploy_stage_id = var.oke_canary_traffic_shift_deploy_stage_id
  oke_cluster_deploy_environment_id        = var.oke_cluster_deploy_environment_id
  dynamic "production_load_balancer_config" {
    for_each = var.production_load_balancer_config[*]
    iterator = plbc
    content {
      backend_port     = plbc.value.backend_port
      listener_name    = plbc.value.listener_name
      load_balancer_id = plbc.value.load_balancer_id
    }
  }
  purpose      = var.purpose
  release_name = var.release_name
  dynamic "rollback_policy" {
    for_each = var.rollback_policy[*]
    iterator = rp
    content {
      policy_type = rp.value.policy_type
    }
  }
  dynamic "rollout_policy" {
    for_each = var.rollout_policy[*]
    iterator = rp
    content {
      policy_type            = rp.value.policy_type
      batch_count            = rp.value.batch_count
      batch_delay_in_seconds = rp.value.batch_delay_in_seconds
      batch_percentage       = rp.value.batch_percentage
      ramp_limit_percent     = rp.value.ramp_limit_percent
    }
  }
  dynamic "set_string" {
    for_each = var.set_string[*]
    iterator = ss
    content {
      dynamic "items" {
        for_each = ss.value.items != null ? ss.value.items : []
        iterator = it
        content {
          name  = it.value.name
          value = it.value.value
        }
      }
    }
  }
  dynamic "set_values" {
    for_each = var.set_values[*]
    iterator = sv
    content {
      dynamic "items" {
        for_each = sv.value.items != null ? sv.value.items : []
        iterator = it
        content {
          name  = it.value.name
          value = it.value.value
        }
      }
    }
  }
  should_cleanup_on_fail            = var.should_cleanup_on_fail
  should_not_wait                   = var.should_not_wait
  should_reset_values               = var.should_reset_values
  should_reuse_values               = var.should_reuse_values
  should_skip_crds                  = var.should_skip_crds
  should_skip_render_subchart_notes = var.should_skip_render_subchart_notes
  dynamic "test_load_balancer_config" {
    for_each = var.test_load_balancer_config[*]
    iterator = tlbc
    content {
      backend_port     = tlbc.value.backend_port
      listener_name    = tlbc.value.listener_name
      load_balancer_id = tlbc.value.load_balancer_id
    }
  }
  timeout_in_seconds   = var.timeout_in_seconds
  traffic_shift_target = var.traffic_shift_target
  values_artifact_ids  = var.values_artifact_ids
  dynamic "wait_criteria" {
    for_each = var.wait_criteria[*]
    iterator = wc
    content {
      wait_duration = wc.value.wait_duration
      wait_type     = wc.value.wait_type
    }
  }
}
