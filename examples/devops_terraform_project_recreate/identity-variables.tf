variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}

variable "compartment_ids" {
  description = "Map of friendly compartment names to OCIDs."
  type        = map(string)
}
