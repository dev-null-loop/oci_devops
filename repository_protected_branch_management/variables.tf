variable "branch_name" {
  description = "Name of a branch to protect."
  type        = string
}

variable "repository_id" {
  description = "Unique repository identifier."
  type        = string
}

variable "protection_levels" {
  description = "Level of protection to add on a branch."
  type        = list(string)
  default     = []
}
