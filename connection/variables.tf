variable "connection_type" {
  description = "The type of connection."
  type        = string
}

variable "project_id" {
  description = "The OCID of the DevOps project."
  type        = string
}

variable "access_token" {
  description = "The OCID of personal access token saved in secret store."
  type        = string
  default     = null
}

variable "app_password" {
  description = "OCID of personal Bitbucket Cloud AppPassword saved in secret store"
  type        = string
  default     = null
}

variable "base_url" {
  description = "The Base URL of the hosted BitbucketServer."
  type        = string
  default     = null
}

variable "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "Optional description about the connection."
  type        = string
  default     = null
}

variable "display_name" {
  description = "Optional connection display name. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.  See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "tls_verify_config" {
  description = "TLS configuration used by build service to verify TLS connection."
  type = object({
    ca_certificate_bundle_id = string
    tls_verify_mode          = string
  })
  default = null
}

variable "username" {
  description = "Public Bitbucket Cloud Username in plain text(not more than 30 characters)"
  type        = string
  default     = null
}
