variable "build_pipeline_id" {
  description = "(Required) The OCID of the build pipeline."
  type        = string
}

variable "build_pipeline_stage_predecessor_collection" {
  description = "(Required) (Updatable) The collection containing the predecessors of a stage."
  type = object({
    items = list(object({
      id = string
    }))
  })
}

variable "build_pipeline_stage_type" {
  description = "(Required) (Updatable) Defines the stage type, which is one of the following: BUILD, DELIVER_ARTIFACT, WAIT, and TRIGGER_DEPLOYMENT_PIPELINE."
  type        = string
}

variable "build_runner_shape_config" {
  description = "(Applicable when build_pipeline_stage_type=BUILD) (Updatable) The information about build runner."
  type = object({
    build_runner_type = string
    memory_in_gbs     = optional(number)
    ocpus             = optional(number)
  })
  default = null
}

variable "build_source_collection" {
  description = "(Required when build_pipeline_stage_type=BUILD) (Updatable) Collection of build sources."
  type = object({
    items = list(object({
      branch          = optional(string)
      connection_id   = optional(string)
      connection_type = string
      name            = optional(string)
      repository_id   = optional(string)
      repository_url  = optional(string)
    }))
  })
  default = null
}

variable "build_spec_file" {
  description = "(Applicable when build_pipeline_stage_type=BUILD) (Updatable) The path to the build specification file for this environment. The default location of the file if not specified is build_spec.yaml."
  type        = string
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "deliver_artifact_collection" {
  description = "(Required when build_pipeline_stage_type=DELIVER_ARTIFACT) (Updatable) Specifies an array of artifacts that need to be pushed to the artifactory stores."
  type = object({
    items = list(object({
      artifact_id   = optional(string)
      artifact_name = optional(string)
    }))
  })
  default = null
}

variable "deploy_pipeline_id" {
  description = "(Required when build_pipeline_stage_type=TRIGGER_DEPLOYMENT_PIPELINE) (Updatable) A target deployment pipeline OCID that will run in this stage."
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) Optional description about the stage."
  type        = string
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) Stage display name, which can be renamed and is not necessarily unique. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.  See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "image" {
  description = "(Required when build_pipeline_stage_type=BUILD) (Updatable) Image name for the build environment"
  type        = string
  default     = null
}

variable "is_pass_all_parameters_enabled" {
  description = "(Required when build_pipeline_stage_type=TRIGGER_DEPLOYMENT_PIPELINE) (Updatable) A boolean flag that specifies whether all the parameters must be passed when the deployment is triggered."
  type        = bool
  default     = false
}

variable "primary_build_source" {
  description = "(Applicable when build_pipeline_stage_type=BUILD) (Updatable) Name of the build source where the build_spec.yml file is located. If not specified, the first entry in the build source collection is chosen as primary build source."
  type        = string
  default     = null
}

variable "private_access_config" {
  description = "(Applicable when build_pipeline_stage_type=BUILD) (Updatable) Specifies the configuration needed when the target Oracle Cloud Infrastructure resource, i.e., OKE cluster, resides in customer's private network."
  type = object({
    network_channel_type = string
    nsg_ids              = optional(list(string), [])
    subnet_id            = string
  })
  default = null
}

variable "stage_execution_timeout_in_seconds" {
  description = "(Applicable when build_pipeline_stage_type=BUILD) (Updatable) Timeout for the build stage execution. Specify value in seconds."
  type        = number
  default     = null
}

variable "wait_criteria" {
  description = "(Required when build_pipeline_stage_type=WAIT) (Updatable) Specifies wait criteria for the Wait stage."
  type = object({
    wait_duration = string
    wait_type     = string
  })
  default = null
}
