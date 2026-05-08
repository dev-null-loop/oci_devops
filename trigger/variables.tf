variable "actions" {
  description = "The list of actions that are to be performed for this trigger."
  type = list(object({
    build_pipeline_id = string
    type              = string
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
}

variable "project_id" {
  description = "The OCID of the DevOps project to which the trigger belongs to."
  type        = string
}

variable "trigger_source" {
  description = "Source of the trigger. Allowed values are,  GITHUB, GITLAB, BITBUCKET_CLOUD, VBS and DEVOPS_CODE_REPOSITORY."
  type        = string
}

variable "connection_id" {
  description = "The OCID of the connection resource used to get details for triggered events."
  type        = string
  default     = null
}

variable "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "Optional description about the trigger."
  type        = string
  default     = null
}

variable "display_name" {
  description = "Trigger display name. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.  See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "repository_id" {
  description = "The OCID of the DevOps code repository."
  type        = string
  default     = null
}
