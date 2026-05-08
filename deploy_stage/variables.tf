variable "deploy_pipeline_id" {
  description = "The OCID of a pipeline."
  type        = string
}

variable "deploy_stage_predecessor_collection" {
  description = "Collection containing the predecessors of a stage."
  type = object({
    items = list(object({
      id = string
    }))
  })
}

variable "deploy_stage_type" {
  description = "Deployment stage type."
  type        = string
}

variable "approval_policy" {
  description = "Specifies the approval policy."
  type = object({
    approval_policy_type         = string
    number_of_approvals_required = number
  })
  default = null
}

variable "are_hooks_enabled" {
  description = "Disable pre/post upgrade hooks. Set to false by default."
  type        = bool
  default     = null
}

variable "blue_backend_ips" {
  description = "Collection of backend environment IP addresses."
  type = object({
    items = optional(list(string))
  })
  default = null
}

variable "blue_green_strategy" {
  description = "Specifies the required blue green release strategy for OKE deployment."
  type = object({
    ingress_name  = string
    namespace_a   = string
    namespace_b   = string
    strategy_type = string
  })
  default = null
}

variable "canary_strategy" {
  description = "Specifies the required canary release strategy for OKE deployment."
  type = object({
    ingress_name  = string
    namespace     = string
    strategy_type = string
  })
  default = null
}

variable "command_spec_deploy_artifact_id" {
  description = "The OCID of the artifact that contains the command specification."
  type        = string
  default     = null
}

variable "compute_instance_group_blue_green_deployment_deploy_stage_id" {
  description = "The OCID of the upstream compute instance group blue-green deployment stage in this pipeline."
  type        = string
  default     = null
}

variable "compute_instance_group_canary_deploy_stage_id" {
  description = "A compute instance group canary stage OCID for load balancer."
  type        = string
  default     = null
}

variable "compute_instance_group_canary_traffic_shift_deploy_stage_id" {
  description = "A compute instance group canary traffic shift stage OCID for load balancer."
  type        = string
  default     = null
}

variable "compute_instance_group_deploy_environment_id" {
  description = "A compute instance group environment OCID for rolling deployment."
  type        = string
  default     = null
}

variable "config" {
  description = "User provided key and value pair configuration, which is assigned through constants or parameter."
  type        = map(string)
  default     = null
}

variable "container_config" {
  description = "Specifies the container configuration."
  type = object({
    container_config_type = string
    network_channel = object({
      network_channel_type = string
      subnet_id            = string
      nsg_ids              = optional(list(string))
    })
    shape_config = object({
      ocpus         = number
      memory_in_gbs = optional(number)
    })
    shape_name          = string
    availability_domain = optional(string)
    compartment_id      = optional(string)
  })
  default = null
}

variable "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "deploy_artifact_id" {
  description = "Optional artifact OCID. The artifact will be included in the body for the function invocation during the stage's execution. If the DeployArtifact.argumentSubstituitionMode is set to SUBSTITUTE_PLACEHOLDERS, then the pipeline parameter values will be used to replace the placeholders in the artifact content."
  type        = string
  default     = null
}

variable "deploy_artifact_ids" {
  description = "The list of file artifact OCIDs to deploy."
  type        = list(string)
  default     = []
}

variable "deploy_environment_id_a" {
  description = "First compute instance group environment OCID for deployment."
  type        = string
  default     = null
}

variable "deploy_environment_id_b" {
  description = "Second compute instance group environment OCID for deployment."
  type        = string
  default     = null
}

variable "deployment_spec_deploy_artifact_id" {
  description = "The OCID of the artifact that contains the deployment specification."
  type        = string
  default     = null
}

variable "description" {
  description = "Optional description about the deployment stage."
  type        = string
  default     = null
}

variable "display_name" {
  description = "Deployment stage display name, which can be renamed and is not necessarily unique. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "docker_image_deploy_artifact_id" {
  description = "A Docker image artifact OCID."
  type        = string
  default     = null
}

variable "failure_policy" {
  description = "Specifies a failure policy for a compute instance group rolling deployment stage."
  type = object({
    policy_type        = string
    failure_count      = optional(number)
    failure_percentage = optional(number)
  })
  default = null
}

variable "freeform_tags" {
  description = "Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.  See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "function_deploy_environment_id" {
  description = "Function environment OCID."
  type        = string
  default     = null
}

variable "function_timeout_in_seconds" {
  description = "Timeout for execution of the Function. Value in seconds."
  type        = number
  default     = null
}

variable "green_backend_ips" {
  description = "Collection of backend environment IP addresses."
  type = object({
    items = optional(list(string))
  })
  default = null
}

variable "helm_chart_deploy_artifact_id" {
  description = "The OCID of the Helm chart artifact."
  type        = string
  default     = null
}

variable "helm_command_artifact_ids" {
  description = "List of helm command artifact OCIDs."
  type        = list(string)
  default     = []
}

variable "is_async" {
  description = "Whether to run the shell stage in async mode."
  type        = bool
  default     = null
}

variable "is_debug_enabled" {
  description = "Whether to enable debug for helm stage."
  type        = bool
  default     = null
}

variable "is_force_enabled" {
  description = "Whether to force resource update through delete/create if needed."
  type        = bool
  default     = null
}

variable "is_uninstall_on_stage_delete" {
  description = "Uninstall the Helm release on stage delete."
  type        = bool
  default     = null
}

variable "is_validation_enabled" {
  description = "Whether to enable helm validation."
  type        = bool
  default     = null
}

variable "kubernetes_manifest_deploy_artifact_ids" {
  description = "The list of Kubernetes manifest artifact OCIDs."
  type        = list(string)
  default     = []
}

variable "load_balancer_config" {
  description = "Specifies the load balancer configuration."
  type = object({
    backend_port     = optional(number)
    listener_name    = optional(string)
    load_balancer_id = optional(string)
  })
  default = null
}

variable "max_history" {
  description = "Limit for successful release history."
  type        = number
  default     = null
}

variable "max_memory_in_mbs" {
  description = "Maximum usable memory for deployment stage in MBs."
  type        = string
  default     = null
}

variable "namespace" {
  description = "Default namespace to be used for Kubernetes deployment when not specified in the manifest."
  type        = string
  default     = null
}

variable "oke_blue_green_deploy_stage_id" {
  description = "The OCID of the upstream OKE blue-green deployment stage in this pipeline."
  type        = string
  default     = null
}

variable "oke_canary_deploy_stage_id" {
  description = "An OKE canary stage OCID for load balancer."
  type        = string
  default     = null
}

variable "oke_canary_traffic_shift_deploy_stage_id" {
  description = "An OKE canary traffic shift stage OCID for load balancer."
  type        = string
  default     = null
}

variable "oke_cluster_deploy_environment_id" {
  description = "Kubernetes cluster environment OCID."
  type        = string
  default     = null
}

variable "production_load_balancer_config" {
  description = "Specifies the load balancer configuration for blue green strategy."
  type = object({
    backend_port     = optional(number)
    listener_name    = optional(string)
    load_balancer_id = optional(string)
  })
  default = null
}

variable "purpose" {
  description = "Purpose of the shell stage."
  type        = string
  default     = null
}

variable "release_name" {
  description = "Helm release name."
  type        = string
  default     = null
}

variable "rollback_policy" {
  description = "Specifies a rollback policy to apply during stage execution."
  type = object({
    policy_type = optional(string)
  })
  default = null
}

variable "rollout_policy" {
  description = "Specifies a rollout policy for a compute instance group or traffic shift stage."
  type = object({
    policy_type            = optional(string)
    batch_count            = optional(number)
    batch_delay_in_seconds = optional(number)
    batch_percentage       = optional(number)
    ramp_limit_percent     = optional(number)
  })
  default = null
}

variable "set_string" {
  description = "Set STRING type Helm chart values."
  type = object({
    items = optional(list(object({
      name  = optional(string)
      value = optional(string)
    })))
  })
  default = null
}

variable "set_values" {
  description = "Set Helm chart values."
  type = object({
    items = optional(list(object({
      name  = optional(string)
      value = optional(string)
    })))
  })
  default = null
}

variable "should_cleanup_on_fail" {
  description = "Whether cleanup should happen on failure."
  type        = bool
  default     = null
}

variable "should_not_wait" {
  description = "Whether to skip waiting for rollout to complete."
  type        = bool
  default     = null
}

variable "should_reset_values" {
  description = "Whether to reset the values to the chart's built-ins rather than merging with existing values."
  type        = bool
  default     = null
}

variable "should_reuse_values" {
  description = "Whether to reuse the user's last supplied values."
  type        = bool
  default     = null
}

variable "should_skip_crds" {
  description = "Whether to skip CRDs during Helm install."
  type        = bool
  default     = null
}

variable "should_skip_render_subchart_notes" {
  description = "Whether to skip rendering subchart notes."
  type        = bool
  default     = null
}

variable "test_load_balancer_config" {
  description = "Specifies the load balancer configuration for blue green strategy."
  type = object({
    backend_port     = optional(number)
    listener_name    = optional(string)
    load_balancer_id = optional(string)
  })
  default = null
}

variable "timeout_in_seconds" {
  description = "Timeout in seconds for stage execution."
  type        = number
  default     = null
}

variable "traffic_shift_target" {
  description = "Target backend set for traffic shift."
  type        = string
  default     = null
}

variable "values_artifact_ids" {
  description = "List of values.yaml artifact OCIDs."
  type        = list(string)
  default     = []
}

variable "wait_criteria" {
  description = "Specifies wait criteria for wait stage."
  type = object({
    wait_duration = string
    wait_type     = string
  })
  default = null
}
