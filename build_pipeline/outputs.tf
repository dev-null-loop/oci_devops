output "id" {
  description = "Unique identifier that is immutable on creation."
  value       = oci_devops_build_pipeline.this.id
}

output "build_pipeline_parameters" {
  description = "Specifies list of parameters present in a build pipeline. An UPDATE operation replaces the existing parameters list entirely."
  value       = oci_devops_build_pipeline.this.build_pipeline_parameters
}

output "compartment_id" {
  description = "The OCID of the compartment where the build pipeline is created."
  value       = oci_devops_build_pipeline.this.compartment_id
}

output "state" {
  description = "The current state of the build pipeline."
  value       = oci_devops_build_pipeline.this.state
}

output "time_created" {
  description = "The time the build pipeline was created. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_build_pipeline.this.time_created
}

output "time_updated" {
  description = "The time the build pipeline was updated. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_build_pipeline.this.time_updated
}
