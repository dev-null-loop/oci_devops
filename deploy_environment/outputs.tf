output "id" {
  description = "Unique identifier that is immutable on creation."
  value       = oci_devops_deploy_environment.this.id
}

output "cluster_id" {
  description = "The OCID of the Kubernetes cluster."
  value       = oci_devops_deploy_environment.this.cluster_id
}

output "compartment_id" {
  description = "The OCID of a compartment."
  value       = oci_devops_deploy_environment.this.compartment_id
}

output "compute_instance_group_selectors" {
  description = "A collection of selectors. The combination of instances matching the selectors are included in the instance group."
  value       = oci_devops_deploy_environment.this.compute_instance_group_selectors
}

output "deploy_environment_type" {
  description = "Deployment environment type."
  value       = oci_devops_deploy_environment.this.deploy_environment_type
}

output "display_name" {
  description = "Deployment environment display name, which can be renamed and is not necessarily unique. Avoid entering confidential information."
  value       = oci_devops_deploy_environment.this.display_name
}

output "function_id" {
  description = "The OCID of the Function."
  value       = oci_devops_deploy_environment.this.function_id
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_devops_deploy_environment.this.lifecycle_details
}

output "network_channel" {
  description = "Specifies the configuration needed when the target Oracle Cloud Infrastructure resource, i.e., OKE cluster, resides in customer's private network."
  value       = oci_devops_deploy_environment.this.network_channel
}

output "project_id" {
  description = "The OCID of a project."
  value       = oci_devops_deploy_environment.this.project_id
}

output "security_attributes" {
  description = "Security attributes to be added in to the deployment environment"
  value       = oci_devops_deploy_environment.this.security_attributes
}

output "state" {
  description = "The current state of the deployment environment."
  value       = oci_devops_deploy_environment.this.state
}

output "time_created" {
  description = "Time the deployment environment was created. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_deploy_environment.this.time_created
}

output "time_updated" {
  description = "Time the deployment environment was updated. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_deploy_environment.this.time_updated
}
