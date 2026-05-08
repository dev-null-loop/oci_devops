variable "build_pipeline_id" {
  description = "(Required) The OCID of the build pipeline."
  type        = string
}

variable "build_run_arguments" {
  description = "(Optional) Specifies list of arguments passed along with the build run."
  type = object({
    items = list(object({
      name  = string
      value = string
    }))
  })
  default = null
}

variable "commit_info" {
  description = "(Optional) Commit details that need to be used for the build run."
  type = object({
    commit_hash       = string
    repository_branch = string
    repository_url    = string
  })
  default = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) Build run display name, which can be renamed and is not necessarily unique. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.  See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}
