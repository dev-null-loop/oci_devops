variable "deploy_pipeline_id" {
  description = "The OCID of a pipeline."
  type        = string
}

variable "deployment_type" {
  description = "Specifies type for this deployment."
  type        = string
}

variable "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "deploy_artifact_override_arguments" {
  description = "Specifies the list of artifact override arguments at the time of deployment."
  type = object({
    items = optional(list(object({
      deploy_artifact_id = optional(string)
      name               = optional(string)
      value              = optional(string, "{value}")
    })))
  })
  default = null
}

variable "deploy_stage_id" {
  description = "Specifies the OCID of the stage to be redeployed."
  type        = string
  default     = null
}

variable "deploy_stage_override_arguments" {
  description = "Specifies the list of arguments to be overriden per Stage at the time of deployment."
  type = object({
    items = optional(list(object({
      deploy_stage_id = optional(string)
      name            = optional(string)
      value           = optional(string)
    })))
  })
  default = null
}

variable "deployment_arguments" {
  description = "Specifies list of arguments passed along with the deployment."
  type = object({
    items = optional(list(object({
      name  = optional(string)
      value = optional(string)
    })))
  })
  default = null
}

variable "display_name" {
  description = "Deployment display name. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.  See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "previous_deployment_id" {
  description = "Specifies the OCID of the previous deployment to be redeployed."
  type        = string
  default     = null
}

variable "trigger_new_devops_deployment" {
  description = "A boolean specifying if a new deployment should be created on every apply. As long as this value is set to true in the config, every apply will trigger a new deployment to be created. The existing deployment resource will be replaced with the new one in the state file (deployment resources are never deleted, they persist as a store of records, but your state file will only track the latest one created with this resource block)."
  type        = bool
  default     = false
}
