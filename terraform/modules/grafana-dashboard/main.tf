locals {
  architecture = jsondecode(file("${path.module}/json/architecture.json"))

  cpu             = jsondecode(file("${path.module}/json/cpu.json"))
  cpu_cores       = jsondecode(file("${path.module}/json/cpu_cores.json"))
  cpu_clock_speed = jsondecode(file("${path.module}/json/cpu_clock_speed.json"))

  disk_space_used      = jsondecode(file("${path.module}/json/disk_space_used.json"))
  disk_space_available = jsondecode(file("${path.module}/json/disk_space_available.json"))

  memory      = jsondecode(file("${path.module}/json/memory.json"))
  temperature = jsondecode(file("${path.module}/json/temperature.json"))
  network     = jsondecode(file("${path.module}/json/network.json"))
}

resource "grafana_dashboard" "dashboard" {
  config_json = jsonencode({
    "annotations" : {
      "list" : [
        {
          "builtIn" : 1,
          "datasource" : {
            "type" : "grafana",
            "uid" : "-- Grafana --"
          },
          "enable" : true,
          "hide" : true,
          "iconColor" : "rgba(0, 211, 255, 1)",
          "name" : "Annotations & Alerts",
          "type" : "dashboard"
        }
      ]
    },
    "editable" : true,
    "fiscalYearStartMonth" : 0,
    "graphTooltip" : 0,
    "id" : 0,
    "links" : [],
    "panels" : [
      "${local.cpu}",
      "${local.architecture}",
      "${local.cpu_cores}",
      "${local.cpu_clock_speed}",
      "${local.memory}",
      "${local.temperature}",
      "${local.disk_space_used}",
      "${local.disk_space_available}",
      "${local.network}",
    ],
    "preload" : false,
    "schemaVersion" : 41,
    "tags" : [],
    "templating" : {
      "list" : [
        {
          "allowCustomValue" : false,
          "current" : {
            "text" : var.device_name,
            "value" : var.device_name

          },
          "name" : "device_name",
          "options" : [
            {
              "selected" : true,
              "text" : var.device_name,
              "value" : "node"
            }
          ],
          "query" : var.device_name,
          "type" : "custom"
        }
      ]
    },
    "time" : {
      "from" : "now-24h",
      "to" : "now"
    },
    "timepicker" : {},
    "timezone" : "browser",
    "title" : var.title,
    "uid" : var.device_name
    "version" : 7
    }
  )
}
