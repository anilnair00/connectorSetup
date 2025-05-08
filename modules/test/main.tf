
# Create Aws connector using irsa Authentication
resource "harness_platform_connector_aws" "this" {
  for_each = { for connector in var.connectors : connector.identifier => connector }

  identifier  = each.value.identifier
  name        = each.value.name
  description = each.value.description
  org_id      = each.value.org_id
  project_id  = each.value.project_id

  cross_account_access {
    role_arn = each.value.cross_account_access_role_arn
    # external_id = ""
  }

  irsa {
    delegate_selectors = ["${each.value.harnessdelegate}"]
    region             = each.value.region
  }

  tags = var.tags
}
