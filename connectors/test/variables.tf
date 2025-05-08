variable "connectors" {
  type = list(object({
    identifier                    = string
    name                          = optional(string)
    description                   = optional(string)
    org_id                        = string
    project_id                    = string
    cross_account_access_role_arn = string
    harnessdelegate               = string
    region                        = string
  }))
}

variable "tags" {
  type = list(string)
}
