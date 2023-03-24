variable "datadog_api_key" {
  default     = null
  description = "Datadog API key. Not required as it comes from the CI/CD variables."
  type        = string
}

variable "datadog_app_key" {
  default     = null
  description = "Datadog APP key. Not required as it comes from the CI/CD variables."
  type        = string
}

variable "datadog_api_url" {
  default     = null
  description = "Datadog API url. Not required as it comes from the CI/CD variables."
  type        = string
}