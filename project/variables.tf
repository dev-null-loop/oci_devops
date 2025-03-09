variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment where the project is created."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) Project description."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.  See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "(Required) Project name (case-sensitive)."
  type        = string
}

variable "topic_id" {
  description = "(Required) (Updatable) The topic ID for notifications."
  type        = string
}
