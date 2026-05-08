resource "oci_devops_repository_ref" "this" {
  ref_name      = var.ref_name
  ref_type      = var.ref_type
  repository_id = var.repository_id
  commit_id     = var.commit_id
  object_id     = var.object_id
}
