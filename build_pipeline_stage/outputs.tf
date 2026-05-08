output "id" {
  description = "Unique identifier that is immutable on creation."
  value       = oci_devops_build_pipeline_stage.this.id
}

output "compartment_id" {
  description = "The OCID of the compartment where the pipeline is created."
  value       = oci_devops_build_pipeline_stage.this.compartment_id
}

output "project_id" {
  description = "The OCID of the DevOps project."
  value       = oci_devops_build_pipeline_stage.this.project_id
}

output "state" {
  description = "The current state of the stage."
  value       = oci_devops_build_pipeline_stage.this.state
}

output "time_created" {
  description = "The time the stage was created. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_build_pipeline_stage.this.time_created
}

output "time_updated" {
  description = "The time the stage was updated. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_build_pipeline_stage.this.time_updated
}
