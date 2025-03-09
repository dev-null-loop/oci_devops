output "id" {
  description = "Unique identifier that is immutable on creation."
  value       = oci_devops_build_pipeline.this.id
}

output "parameters" {
  value = oci_devops_build_pipeline.this.build_pipeline_parameters
}
