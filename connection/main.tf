resource "oci_devops_connection" "this" {
  connection_type = var.connection_type
  project_id      = var.project_id
  access_token    = var.access_token
  app_password    = var.app_password
  base_url        = var.base_url
  defined_tags    = var.defined_tags
  description     = var.description
  display_name    = var.display_name
  freeform_tags   = var.freeform_tags
  dynamic "tls_verify_config" {
    for_each = var.tls_verify_config[*]
    iterator = tvc
    content {
      ca_certificate_bundle_id = tvc.value.ca_certificate_bundle_id
      tls_verify_mode          = tvc.value.tls_verify_mode
    }
  }
  username = var.username
}
