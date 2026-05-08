output "id" {
  description = "Unique identifier that is immutable on creation."
  value       = oci_devops_trigger.this.id
}

output "actions" {
  description = "The list of actions that are to be performed for this trigger."
  value       = oci_devops_trigger.this.actions
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the trigger."
  value       = oci_devops_trigger.this.compartment_id
}

output "project_id" {
  description = "The OCID of the DevOps project to which the trigger belongs to."
  value       = oci_devops_trigger.this.project_id
}

output "repository_id" {
  description = "The OCID of the DevOps code repository."
  value       = oci_devops_trigger.this.repository_id
}

output "state" {
  description = "The current state of the trigger."
  value       = oci_devops_trigger.this.state
}

output "time_created" {
  description = "The time the trigger was created. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_trigger.this.time_created
}

output "time_updated" {
  description = "The time the trigger was updated. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_trigger.this.time_updated
}

output "trigger_source" {
  description = "Source of the trigger. Allowed values are, GITHUB, GITLAB, BITBUCKET_CLOUD, VBS and DEVOPS_CODE_REPOSITORY."
  value       = oci_devops_trigger.this.trigger_source
}

output "trigger_url" {
  description = "The endpoint that listens to trigger events."
  value       = oci_devops_trigger.this.trigger_url
}
