output "id" {
  description = "Composite identifier for the repository setting."
  value       = oci_devops_repository_setting.this.id
}

output "approval_rules" {
  description = "List of approval rules which must be statisfied before pull requests which match the rules can be merged"
  value       = oci_devops_repository_setting.this.approval_rules
}

output "merge_checks" {
  description = "Criteria which must be satisfied to merge a pull request."
  value       = oci_devops_repository_setting.this.merge_checks
}

output "merge_settings" {
  description = "Enabled and disabled merge strategies for a project or repository, also contains a default strategy."
  value       = oci_devops_repository_setting.this.merge_settings
}
