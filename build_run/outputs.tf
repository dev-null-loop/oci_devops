output "id" {
  description = "Unique identifier that is immutable on creation."
  value       = oci_devops_build_run.this.id
}

output "build_outputs" {
  description = "Outputs from the build."
  value       = oci_devops_build_run.this.build_outputs
}

output "build_pipeline_id" {
  description = "The OCID of the build pipeline."
  value       = oci_devops_build_run.this.build_pipeline_id
}

output "project_id" {
  description = "The OCID of the DevOps project."
  value       = oci_devops_build_run.this.project_id
}

output "state" {
  description = "The current state of the build run."
  value       = oci_devops_build_run.this.state
}

output "time_created" {
  description = "The time the build run was created. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_build_run.this.time_created
}

output "time_updated" {
  description = "The time the build run was updated. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_build_run.this.time_updated
}
