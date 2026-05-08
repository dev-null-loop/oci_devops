output "id" {
  description = "Composite identifier for the repository ref."
  value       = oci_devops_repository_ref.this.id
}

output "commit_id" {
  description = "Commit ID pointed to by the new branch."
  value       = oci_devops_repository_ref.this.commit_id
}

output "full_ref_name" {
  description = "Unique full reference name inside a repository."
  value       = oci_devops_repository_ref.this.full_ref_name
}

output "object_id" {
  description = "SHA-1 hash value of the object pointed to by the tag."
  value       = oci_devops_repository_ref.this.object_id
}

output "ref_name" {
  description = "Unique reference name inside a repository."
  value       = oci_devops_repository_ref.this.ref_name
}

output "ref_type" {
  description = "The type of reference (BRANCH or TAG)."
  value       = oci_devops_repository_ref.this.ref_type
}

output "repository_id" {
  description = "The OCID of the repository containing the reference."
  value       = oci_devops_repository_ref.this.repository_id
}
