output "id" {
  description = "Unique identifier that is immutable on creation."
  value       = oci_devops_deploy_artifact.this.id
}

output "argument_substitution_mode" {
  description = "Mode for artifact parameter substitution. Options: `\"NONE\", \"SUBSTITUTE_PLACEHOLDERS\"` For Helm Deployments only \"NONE\" is supported."
  value       = oci_devops_deploy_artifact.this.argument_substitution_mode
}

output "compartment_id" {
  description = "The OCID of a compartment."
  value       = oci_devops_deploy_artifact.this.compartment_id
}

output "deploy_artifact_source" {
  description = "Specifies source of an artifact."
  value       = oci_devops_deploy_artifact.this.deploy_artifact_source
}

output "deploy_artifact_type" {
  description = "Type of the deployment artifact."
  value       = oci_devops_deploy_artifact.this.deploy_artifact_type
}

output "display_name" {
  description = "Deployment artifact identifier, which can be renamed and is not necessarily unique. Avoid entering confidential information."
  value       = oci_devops_deploy_artifact.this.display_name
}

output "lifecycle_details" {
  description = "A detailed message describing the current state. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_devops_deploy_artifact.this.lifecycle_details
}

output "project_id" {
  description = "The OCID of a project."
  value       = oci_devops_deploy_artifact.this.project_id
}

output "state" {
  description = "Current state of the deployment artifact."
  value       = oci_devops_deploy_artifact.this.state
}

output "time_created" {
  description = "Time the deployment artifact was created. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_deploy_artifact.this.time_created
}

output "time_updated" {
  description = "Time the deployment artifact was updated. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_deploy_artifact.this.time_updated
}
