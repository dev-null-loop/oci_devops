output "id" {
  description = "Unique identifier that is immutable on creation."
  value       = oci_devops_deploy_stage.this.id
}

output "compartment_id" {
  description = "The OCID of a compartment."
  value       = oci_devops_deploy_stage.this.compartment_id
}

output "deploy_pipeline_id" {
  description = "The OCID of a pipeline."
  value       = oci_devops_deploy_stage.this.deploy_pipeline_id
}

output "deploy_stage_type" {
  description = "Deployment stage type."
  value       = oci_devops_deploy_stage.this.deploy_stage_type
}

output "display_name" {
  description = "Deployment stage display name, which can be renamed and is not necessarily unique. Avoid entering confidential information."
  value       = oci_devops_deploy_stage.this.display_name
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_devops_deploy_stage.this.lifecycle_details
}

output "project_id" {
  description = "The OCID of a project."
  value       = oci_devops_deploy_stage.this.project_id
}

output "state" {
  description = "The current state of the deployment stage."
  value       = oci_devops_deploy_stage.this.state
}

output "time_created" {
  description = "Time the deployment stage was created. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_deploy_stage.this.time_created
}

output "time_updated" {
  description = "Time the deployment stage was updated. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_deploy_stage.this.time_updated
}
