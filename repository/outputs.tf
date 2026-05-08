output "id" {
  description = "The OCID of the repository. This value is unique and immutable."
  value       = oci_devops_repository.this.id
}

output "branch_count" {
  description = "The count of the branches present in the repository."
  value       = oci_devops_repository.this.branch_count
}

output "commit_count" {
  description = "The count of the commits present in the repository."
  value       = oci_devops_repository.this.commit_count
}

output "compartment_id" {
  description = "The OCID of the repository's compartment."
  value       = oci_devops_repository.this.compartment_id
}

output "default_branch" {
  description = "The default branch of the repository."
  value       = oci_devops_repository.this.default_branch
}

output "http_url" {
  description = "HTTP URL that you use to git clone, pull and push."
  value       = oci_devops_repository.this.http_url
}

output "lifecyle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_devops_repository.this.lifecyle_details
}

output "mirror_repository_config" {
  description = "Configuration information for mirroring the repository."
  value       = oci_devops_repository.this.mirror_repository_config
}

output "namespace" {
  description = "Tenancy unique namespace."
  value       = oci_devops_repository.this.namespace
}

output "parent_repository_id" {
  description = "The OCID of the parent repository."
  value       = oci_devops_repository.this.parent_repository_id
}

output "project_id" {
  description = "The OCID of the DevOps project containing the repository."
  value       = oci_devops_repository.this.project_id
}

output "project_name" {
  description = "Unique project name in a namespace."
  value       = oci_devops_repository.this.project_name
}

output "size_in_bytes" {
  description = "The size of the repository in bytes."
  value       = oci_devops_repository.this.size_in_bytes
}

output "ssh_url" {
  description = "SSH URL that you use to git clone, pull and push."
  value       = oci_devops_repository.this.ssh_url
}

output "state" {
  description = "The current state of the repository."
  value       = oci_devops_repository.this.state
}

output "time_created" {
  description = "The time the repository was created. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_repository.this.time_created
}

output "time_updated" {
  description = "The time the repository was updated. Format defined by [RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)."
  value       = oci_devops_repository.this.time_updated
}

output "trigger_build_events" {
  description = "Trigger build events supported for this repository: PUSH - Build is triggered when a push event occurs. PULL_REQUEST_CREATED - Build is triggered when a pull request is created in the repository. PULL_REQUEST_UPDATED - Build is triggered when a push is made to a branch with an open pull request. COMMIT_UPDATES - Build is triggered when new commits are mirrored into a repository."
  value       = oci_devops_repository.this.trigger_build_events
}
