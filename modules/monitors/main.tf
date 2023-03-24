resource "datadog_monitor" "metric_alert" {
  name    = var.name
  type    = var.type
  message = var.message

  query = var.query
  
  monitor_thresholds {
    warning  = var.warning_threshold
    critical = var.critical_threshold
  }

  include_tags     = var.include_tags
  restricted_roles = var.restricted_roles

  tags = concat(["managed_by:terraform", "env:${var.env}"], var.additional_tags)
}