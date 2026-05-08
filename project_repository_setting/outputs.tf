output "id" {
  description = "Composite identifier for the project repository setting."
  value       = oci_devops_project_repository_setting.this.id
}

output "approval_rules" {
  description = "List of approval rules which must be statisfied before pull requests which match the rules can be merged"
  value       = oci_devops_project_repository_setting.this.approval_rules
}

output "merge_settings" {
  description = "Enabled and disabled merge strategies for a project or repository, also contains a default strategy."
  value       = oci_devops_project_repository_setting.this.merge_settings
}
