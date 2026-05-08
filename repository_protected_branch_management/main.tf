resource "oci_devops_repository_protected_branch_management" "this" {
  branch_name       = var.branch_name
  repository_id     = var.repository_id
  protection_levels = var.protection_levels
}
