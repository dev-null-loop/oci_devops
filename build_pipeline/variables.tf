variable "project_id" {
  description = "(Required) The OCID of the DevOps project."
  type        = string
}

variable "build_pipeline_parameters" {
  description = "(Optional) (Updatable) Specifies list of parameters present in a build pipeline. An UPDATE operation replaces the existing parameters list entirely."
  type = object({
    items = list(object({
      default_value = string
      description   = optional(string)
      name          = string
    }))
  })
  default = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) Optional description about the build pipeline."
  type        = string
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) Build pipeline display name. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.  See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}
