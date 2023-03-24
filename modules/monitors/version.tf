# Check the version you'll use here
# https://registry.terraform.io/providers/DataDog/datadog/latest

terraform {
  required_providers {
    datadog = {
      source  = "DataDog/datadog"
      version = "3.22.0"
    }
  }
}