output "id" {
  description = "Generated identifier for the protected branch management resource."
  value       = oci_devops_repository_protected_branch_management.this.id
}

output "branch_name" {
  description = "Branch name inside a repository."
  value       = oci_devops_repository_protected_branch_management.this.branch_name
}

output "freeform_tags" {
  description = "Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.  See [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"bar-key\": \"value\"}`"
  value       = oci_devops_repository_protected_branch_management.this.freeform_tags
}

output "protection_levels" {
  description = "Protection levels to be added on the branch."
  value       = oci_devops_repository_protected_branch_management.this.protection_levels
}
