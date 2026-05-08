variable "ref_name" {
  description = "A filter to return only resources that match the given reference name."
  type        = string
}

variable "ref_type" {
  description = "The type of reference (BRANCH or TAG)."
  type        = string
}

variable "repository_id" {
  description = "Unique repository identifier."
  type        = string
}

variable "commit_id" {
  description = "Commit ID pointed to by the new branch."
  type        = string
  default     = null
}

variable "object_id" {
  description = "SHA-1 hash value of the object pointed to by the tag."
  type        = string
  default     = null
}
