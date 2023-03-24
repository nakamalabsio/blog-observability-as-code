locals {
  monitors = yamldecode(file("${path.module}/vars/monitors.yaml"))
}

module "monitor" {
  source              = "../modules/monitors"
  for_each            = local.monitors
  name                = each.value.name
  type                = each.value.type
  query               = each.value.query
  message             = each.value.message
  warning_threshold   = each.value.warning_threshold
  critical_threshold  = each.value.critical_threshold
  include_tags        = each.value.include_tags
  restricted_roles    = each.value.restricted_roles
  env                 = each.value.env
  additional_tags     = each.value.additional_tags
}