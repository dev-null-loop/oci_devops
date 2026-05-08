output "id" {
  description = "Unique identifier that is immutable on creation."
  value       = oci_devops_project.this.id
}

output "namespace" {
  description = "Namespace associated with the project."
  value       = oci_devops_project.this.namespace
}

output "notification_config" {
  description = "Notification configuration for the project."
  value       = oci_devops_project.this.notification_config
}

output "state" {
  description = "The current state of the project."
  value       = oci_devops_project.this.state
}

output "time_created" {
  description = "Time the project was created. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_project.this.time_created
}

output "time_updated" {
  description = "Time the project was updated. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_project.this.time_updated
}
