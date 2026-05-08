output "id" {
  description = "Unique identifier that is immutable on creation."
  value       = oci_devops_connection.this.id
}

output "access_token" {
  description = "The OCID of personal access token saved in secret store."
  value       = oci_devops_connection.this.access_token
}

output "base_url" {
  description = "The Base URL of the hosted Visual Builder Studio server."
  value       = oci_devops_connection.this.base_url
}

output "compartment_id" {
  description = "The OCID of the compartment containing the connection."
  value       = oci_devops_connection.this.compartment_id
}

output "connection_type" {
  description = "The type of connection."
  value       = oci_devops_connection.this.connection_type
}

output "display_name" {
  description = "Connection display name, which can be renamed and is not necessarily unique. Avoid entering confidential information."
  value       = oci_devops_connection.this.display_name
}

output "last_connection_validation_result" {
  description = "The result of validating the credentials of a connection."
  value       = oci_devops_connection.this.last_connection_validation_result
}

output "project_id" {
  description = "The OCID of the DevOps project."
  value       = oci_devops_connection.this.project_id
}

output "state" {
  description = "The current state of the connection."
  value       = oci_devops_connection.this.state
}

output "time_created" {
  description = "The time the connection was created. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_connection.this.time_created
}

output "time_updated" {
  description = "The time the connection was updated. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_connection.this.time_updated
}

output "tls_verify_config" {
  description = "TLS configuration used by build service to verify TLS connection."
  value       = oci_devops_connection.this.tls_verify_config
}

output "username" {
  description = "Public Bitbucket Cloud Username in plain text"
  value       = oci_devops_connection.this.username
}
