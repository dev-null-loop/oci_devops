output "id" {
  description = "Unique identifier that is immutable on creation."
  value       = oci_devops_deploy_pipeline.this.id
}

output "compartment_id" {
  description = "The OCID of the compartment where the pipeline is created."
  value       = oci_devops_deploy_pipeline.this.compartment_id
}

output "deploy_pipeline_artifacts" {
  description = "List of all artifacts used in the pipeline."
  value       = oci_devops_deploy_pipeline.this.deploy_pipeline_artifacts
}

output "deploy_pipeline_environments" {
  description = "List of all environments used in the pipeline."
  value       = oci_devops_deploy_pipeline.this.deploy_pipeline_environments
}

output "deploy_pipeline_parameters" {
  description = "Specifies list of parameters present in the deployment pipeline. In case of Update operation, replaces existing parameters list. Merging with existing parameters is not supported."
  value       = oci_devops_deploy_pipeline.this.deploy_pipeline_parameters
}

output "display_name" {
  description = "Deployment pipeline display name, which can be renamed and is not necessarily unique. Avoid entering confidential information."
  value       = oci_devops_deploy_pipeline.this.display_name
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_devops_deploy_pipeline.this.lifecycle_details
}

output "project_id" {
  description = "The OCID of a project."
  value       = oci_devops_deploy_pipeline.this.project_id
}

output "state" {
  description = "The current state of the deployment pipeline."
  value       = oci_devops_deploy_pipeline.this.state
}

output "time_created" {
  description = "Time the deployment pipeline was created. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_deploy_pipeline.this.time_created
}

output "time_updated" {
  description = "Time the deployment pipeline was updated. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_deploy_pipeline.this.time_updated
}
