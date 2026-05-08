output "id" {
  description = "Unique identifier that is immutable on creation."
  value       = oci_devops_deployment.this.id
}

output "compartment_id" {
  description = "The OCID of a compartment."
  value       = oci_devops_deployment.this.compartment_id
}

output "deploy_pipeline_artifacts" {
  description = "List of all artifacts used in the pipeline."
  value       = oci_devops_deployment.this.deploy_pipeline_artifacts
}

output "deploy_pipeline_environments" {
  description = "List of all environments used in the pipeline."
  value       = oci_devops_deployment.this.deploy_pipeline_environments
}

output "deployment_execution_progress" {
  description = "The execution progress details of a deployment."
  value       = oci_devops_deployment.this.deployment_execution_progress
}

output "deploy_pipeline_id" {
  description = "The OCID of a pipeline."
  value       = oci_devops_deployment.this.deploy_pipeline_id
}

output "deploy_stage_id" {
  description = "Specifies the OCID of the stage to be redeployed."
  value       = oci_devops_deployment.this.deploy_stage_id
}

output "display_name" {
  description = "Deployment identifier which can be renamed and is not necessarily unique. Avoid entering confidential information."
  value       = oci_devops_deployment.this.display_name
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_devops_deployment.this.lifecycle_details
}

output "previous_deployment_id" {
  description = "Specifies the OCID of the previous deployment to be redeployed."
  value       = oci_devops_deployment.this.previous_deployment_id
}

output "project_id" {
  description = "The OCID of a project."
  value       = oci_devops_deployment.this.project_id
}

output "state" {
  description = "The current state of the deployment."
  value       = oci_devops_deployment.this.state
}

output "time_created" {
  description = "Time the deployment was created. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_deployment.this.time_created
}

output "time_updated" {
  description = "Time the deployment was updated. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_deployment.this.time_updated
}
