terraform {
  required_version = ">= 1"

  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "3.25.9"
    }
  }
}
