variable "projects" {
  description = "DevOps projects to create."
  type = map(object({
    compartment_name      = string
    name                  = string
    description           = optional(string)
    notification_topic_id = string
    defined_tags          = optional(map(string), null)
    freeform_tags         = optional(map(string), {})
  }))
}

variable "connections" {
  description = "DevOps SCM connections."
  type = map(object({
    project_name    = string
    connection_type = string
    access_token    = optional(string)
    app_password    = optional(string)
    base_url        = optional(string)
    description     = optional(string)
    display_name    = optional(string)
    tls_verify_config = optional(object({
      ca_certificate_bundle_id = string
      tls_verify_mode          = string
    }))
    username      = optional(string)
    defined_tags  = optional(map(string), null)
    freeform_tags = optional(map(string), {})
  }))
  default = {}
}

variable "repositories" {
  description = "DevOps repositories."
  type = map(object({
    project_name         = string
    name                 = string
    repository_type      = string
    default_branch       = optional(string)
    description          = optional(string)
    parent_repository_id = optional(string)
    mirror_repository_config = optional(object({
      connection_name = optional(string)
      repository_url  = optional(string)
      trigger_schedule = optional(object({
        schedule_type   = string
        custom_schedule = optional(string)
      }))
    }))
    defined_tags  = optional(map(string), null)
    freeform_tags = optional(map(string), {})
  }))
  default = {}
}

variable "build_pipelines" {
  description = "DevOps build pipelines."
  type = map(object({
    project_name = string
    description  = optional(string)
    display_name = optional(string)
    build_pipeline_parameters = optional(object({
      items = list(object({
        default_value = string
        description   = optional(string)
        name          = string
      }))
    }))
    defined_tags  = optional(map(string), null)
    freeform_tags = optional(map(string), {})
  }))
  default = {}
}

variable "build_pipeline_stages" {
  description = "DevOps build pipeline stages."
  type = map(object({
    build_pipeline_name = string
    predecessors = list(object({
      type = string
      name = string
    }))
    build_pipeline_stage_type = string
    build_runner_shape_config = optional(object({
      build_runner_type = string
      memory_in_gbs     = optional(number)
      ocpus             = optional(number)
    }))
    build_source_collection = optional(object({
      items = list(object({
        branch          = optional(string)
        connection_name = optional(string)
        connection_type = string
        name            = optional(string)
        repository_name = optional(string)
        repository_url  = optional(string)
      }))
    }))
    build_spec_file = optional(string)
    deliver_artifact_collection = optional(object({
      items = list(object({
        artifact_id   = optional(string)
        artifact_name = optional(string)
      }))
    }))
    deploy_pipeline_id             = optional(string)
    description                    = optional(string)
    display_name                   = optional(string)
    image                          = optional(string)
    is_pass_all_parameters_enabled = optional(bool, false)
    primary_build_source           = optional(string)
    private_access_config = optional(object({
      network_channel_type = string
      nsg_ids              = optional(list(string))
      subnet_id            = string
    }))
    stage_execution_timeout_in_seconds = optional(number)
    wait_criteria = optional(object({
      wait_duration = string
      wait_type     = string
    }))
    defined_tags  = optional(map(string), null)
    freeform_tags = optional(map(string), {})
  }))
  default = {}
}

variable "triggers" {
  description = "DevOps triggers."
  type = map(object({
    project_name    = string
    trigger_source  = string
    connection_name = optional(string)
    repository_name = optional(string)
    description     = optional(string)
    display_name    = optional(string)
    actions = list(object({
      build_pipeline_name = string
      type                = string
      filter = optional(object({
        trigger_source = string
        events         = optional(list(string))
        exclude = optional(object({
          file_filter = optional(object({
            file_paths = optional(list(string))
          }))
        }))
        include = optional(object({
          base_ref = optional(string)
          file_filter = optional(object({
            file_paths = optional(list(string))
          }))
          head_ref        = optional(string)
          repository_name = optional(string)
        }))
      }))
    }))
    defined_tags  = optional(map(string), null)
    freeform_tags = optional(map(string), {})
  }))
  default = {}
}
