variable "deploy_environment_type" {
  description = "Deployment environment type."
  type        = string
}

variable "project_id" {
  description = "The OCID of a project."
  type        = string
}

variable "cluster_id" {
  description = "The OCID of the Kubernetes cluster."
  type        = string
  default     = null
}

variable "compute_instance_group_selectors" {
  description = "A collection of selectors. The combination of instances matching the selectors are included in the instance group."
  type = object({
    items = optional(list(object({
      selector_type        = string
      compute_instance_ids = optional(list(string))
      query                = optional(string)
      region               = optional(string)
    })))
  })
  default = null
}

variable "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "Optional description about the deployment environment."
  type        = string
  default     = null
}

variable "display_name" {
  description = "Deployment environment display name. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.  See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "function_id" {
  description = "The OCID of the Function."
  type        = string
  default     = null
}

variable "network_channel" {
  description = "Specifies the configuration needed when the target Oracle Cloud Infrastructure resource, i.e., OKE cluster, resides in customer's private network."
  type = object({
    network_channel_type = string
    subnet_id            = string
    nsg_ids              = optional(list(string))
  })
  default = null
}

variable "security_attributes" {
  description = "Security attributes to be added in to the deployment environment"
  type        = map(string)
  default     = null
}
