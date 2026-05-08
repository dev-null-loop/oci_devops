variable "name" {
  description = "Name of the repository. Should be unique within the project."
  type        = string
}

variable "project_id" {
  description = "The OCID of the DevOps project containing the repository."
  type        = string
}

variable "repository_type" {
  description = "Type of repository. Allowed values:  `MIRRORED`  `HOSTED` `FORKED` "
  type        = string
}

variable "default_branch" {
  description = "The default branch of the repository."
  type        = string
  default     = null
}

variable "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "Details of the repository. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.  See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "mirror_repository_config" {
  description = "Configuration information for mirroring the repository."
  type = object({
    connector_id   = optional(string)
    repository_url = optional(string)
    trigger_schedule = optional(object({
      schedule_type   = string
      custom_schedule = optional(string)
    }))
  })
  default = null
}

variable "parent_repository_id" {
  description = "The OCID of the parent repository."
  type        = string
  default     = null
}
