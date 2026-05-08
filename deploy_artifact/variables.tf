variable "argument_substitution_mode" {
  description = "Mode for artifact parameter substitution. Options: `\"NONE\", \"SUBSTITUTE_PLACEHOLDERS\"` For Helm Deployments only \"NONE\" is supported."
  type        = string
}

variable "deploy_artifact_source" {
  description = "Specifies source of an artifact."
  type = object({
    deploy_artifact_source_type = string
    base64encoded_content       = optional(string)
    chart_url                   = optional(string)
    deploy_artifact_path        = optional(string)
    deploy_artifact_version     = optional(string)
    helm_artifact_source_type   = optional(string)
    helm_verification_key_source = optional(object({
      verification_key_source_type = string
      current_public_key           = optional(string)
      previous_public_key          = optional(string)
      vault_secret_id              = optional(string)
    }))
    image_digest  = optional(string)
    image_uri     = optional(string)
    repository_id = optional(string)
  })
}

variable "deploy_artifact_type" {
  description = "Type of the deployment artifact."
  type        = string
}

variable "project_id" {
  description = "The OCID of a project."
  type        = string
}

variable "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "Optional description about the deployment artifact."
  type        = string
  default     = null
}

variable "display_name" {
  description = "Deployment artifact display name. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.  See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}
