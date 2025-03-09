variable "project_id" {
  description = "(Required) The OCID of the DevOps project."
  type        = string
}

variable "display_name" {
  description = "(Optional) (Updatable) Build pipeline display name. Avoid entering confidential information."
  type        = string
  default     = "build_pipeline"
}

variable "description" {
  description = "(Optional) (Updatable) Optional description about the build pipeline."
  type        = string
  default     = null
}

variable "parameters" {
  description = "(Optional) (Updatable) Specifies list of parameters present in the deployment pipeline. In case of Update operation, replaces existing parameters list. Merging with existing parameters is not supported."
  type = map(object({
    name          = string
    default_value = optional(string)
    description   = optional(string)
  }))
  default = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}
variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.  See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}
