resource "oci_devops_project" "this" {
  compartment_id = var.compartment_id
  name           = var.name
  notification_config {
    topic_id = oci_ons_notification_topic.this.id
  }
  defined_tags  = var.defined_tags
  description   = var.description
  freeform_tags = var.freeform_tags
}
