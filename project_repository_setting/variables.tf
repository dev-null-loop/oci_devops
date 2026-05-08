variable "project_id" {
  description = "Unique project identifier."
  type        = string
}

variable "approval_rules" {
  description = "List of approval rules which must be statisfied before pull requests which match the rules can be merged"
  type = object({
    items = list(object({
      min_approvals_count = number
      name                = string
      destination_branch  = optional(string)
      reviewers = optional(list(object({
        principal_id = string
      })), [])
    }))
  })
  default = null
}

variable "merge_settings" {
  description = "Enabled and disabled merge strategies for a project or repository, also contains a default strategy."
  type = object({
    allowed_merge_strategies = list(string)
    default_merge_strategy   = string
  })
  default = null
}
