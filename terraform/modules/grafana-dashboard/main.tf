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
      {
        "id" : 4,
        "type" : "timeseries",
        "title" : "CPU",
        "gridPos" : {
          "x" : 0,
          "y" : 8,
          "h" : 8,
          "w" : 12
        },
        "fieldConfig" : {
          "defaults" : {
            "custom" : {
              "drawStyle" : "line",
              "lineInterpolation" : "linear",
              "barAlignment" : 0,
              "barWidthFactor" : 0.6,
              "lineWidth" : 1,
              "fillOpacity" : 0,
              "gradientMode" : "none",
              "spanNulls" : false,
              "insertNulls" : false,
              "showPoints" : "auto",
              "showValues" : false,
              "pointSize" : 5,
              "stacking" : {
                "mode" : "none",
                "group" : "A"
              },
              "axisPlacement" : "auto",
              "axisLabel" : "",
              "axisColorMode" : "text",
              "axisBorderShow" : false,
              "scaleDistribution" : {
                "type" : "linear"
              },
              "axisCenteredZero" : false,
              "hideFrom" : {
                "tooltip" : false,
                "viz" : false,
                "legend" : false
              },
              "thresholdsStyle" : {
                "mode" : "off"
              }
            },
            "color" : {
              "mode" : "palette-classic"
            },
            "mappings" : [],
            "thresholds" : {
              "mode" : "absolute",
              "steps" : [
                {
                  "color" : "green",
                  "value" : null
                },
                {
                  "color" : "red",
                  "value" : 80
                }
              ]
            },
            "unit" : "percentunit"
          },
          "overrides" : []
        },
        "pluginVersion" : "12.2.0-17245430286.patch2",
        "targets" : [
          {
            "editorMode" : "code",
            "expr" : "avg without(instance,job,cpu) (rate(node_cpu_seconds_total{mode!=\"idle\", job=\"$device_name\"}[5m]))",
            "hide" : false,
            "legendFormat" : "__auto",
            "range" : true,
            "refId" : "A",
            "instant" : false,
            "exemplar" : false
          }
        ],
        "datasource" : {
          "type" : "prometheus",
          "uid" : "grafanacloud-prom"
        },
        "options" : {
          "tooltip" : {
            "mode" : "single",
            "sort" : "none",
            "hideZeros" : false
          },
          "legend" : {
            "showLegend" : true,
            "displayMode" : "list",
            "placement" : "bottom",
            "calcs" : []
          }
        }
      },
      {
        "datasource" : {
          "uid" : "grafanacloud-prom"
        },
        "fieldConfig" : {
          "defaults" : {
            "color" : {
              "mode" : "thresholds"
            },
            "mappings" : [],
            "thresholds" : {
              "mode" : "absolute",
              "steps" : [
                {
                  "color" : "green",
                  "value" : 0
                },
                {
                  "color" : "red",
                  "value" : 80
                }
              ]
            }
          },
          "overrides" : []
        },
        "gridPos" : {
          "h" : 8,
          "w" : 4,
          "x" : 12,
          "y" : 0
        },
        "id" : 6,
        "options" : {
          "colorMode" : "value",
          "graphMode" : "area",
          "justifyMode" : "auto",
          "orientation" : "auto",
          "percentChangeColorMode" : "standard",
          "reduceOptions" : {
            "calcs" : [
              "lastNotNull"
            ],
            "fields" : "/^machine$/",
            "limit" : 1,
            "values" : true
          },
          "showPercentChange" : false,
          "textMode" : "auto",
          "wideLayout" : true
        },
        "pluginVersion" : "12.2.0-16677249643",
        "targets" : [
          {
            "editorMode" : "builder",
            "exemplar" : false,
            "expr" : "node_uname_info{job=\"$device_name\"}",
            "instant" : false,
            "legendFormat" : "__auto",
            "range" : true,
            "refId" : "A"
          }
        ],
        "title" : "Architecture",
        "transformations" : [
          {
            "id" : "labelsToFields",
            "options" : {
              "valueLabel" : "__name__"
            }
          }
        ],
        "type" : "stat"
      },
      {
        "datasource" : {
          "type" : "prometheus",
          "uid" : "grafanacloud-prom"
        },
        "fieldConfig" : {
          "defaults" : {
            "color" : {
              "mode" : "thresholds"
            },
            "mappings" : [],
            "thresholds" : {
              "mode" : "absolute",
              "steps" : [
                {
                  "color" : "green",
                  "value" : 0
                },
                {
                  "color" : "red",
                  "value" : 80
                }
              ]
            },
            "unit" : "rothz"
          },
          "overrides" : []
        },
        "gridPos" : {
          "h" : 8,
          "w" : 4,
          "x" : 16,
          "y" : 0
        },
        "id" : 5,
        "options" : {
          "colorMode" : "value",
          "graphMode" : "area",
          "justifyMode" : "auto",
          "orientation" : "auto",
          "percentChangeColorMode" : "standard",
          "reduceOptions" : {
            "calcs" : [
              "lastNotNull"
            ],
            "fields" : "",
            "values" : false
          },
          "showPercentChange" : false,
          "textMode" : "auto",
          "wideLayout" : true
        },
        "pluginVersion" : "12.2.0-16677249643",
        "targets" : [
          {
            "editorMode" : "builder",
            "expr" : "max(node_cpu_frequency_max_hertz{job=\"$device_name\"})",
            "legendFormat" : "__auto",
            "range" : true,
            "refId" : "A"
          }
        ],
        "title" : "Max speed",
        "type" : "stat"
      },
      {
        "datasource" : {
          "type" : "prometheus",
          "uid" : "grafanacloud-prom"
        },
        "fieldConfig" : {
          "defaults" : {
            "color" : {
              "mode" : "palette-classic"
            },
            "custom" : {
              "axisBorderShow" : false,
              "axisCenteredZero" : false,
              "axisColorMode" : "text",
              "axisLabel" : "",
              "axisPlacement" : "auto",
              "barAlignment" : 0,
              "barWidthFactor" : 0.6,
              "drawStyle" : "line",
              "fillOpacity" : 30,
              "gradientMode" : "none",
              "hideFrom" : {
                "legend" : false,
                "tooltip" : false,
                "viz" : false
              },
              "insertNulls" : false,
              "lineInterpolation" : "linear",
              "lineWidth" : 1,
              "pointSize" : 5,
              "scaleDistribution" : {
                "type" : "linear"
              },
              "showPoints" : "auto",
              "spanNulls" : false,
              "stacking" : {
                "group" : "A",
                "mode" : "none"
              },
              "thresholdsStyle" : {
                "mode" : "off"
              }
            },
            "mappings" : [],
            "thresholds" : {
              "mode" : "absolute",
              "steps" : [
                {
                  "color" : "green",
                  "value" : 0
                },
                {
                  "color" : "red",
                  "value" : 80
                }
              ]
            },
            "unit" : "bytes"
          },
          "overrides" : []
        },
        "gridPos" : {
          "h" : 8,
          "w" : 12,
          "x" : 0,
          "y" : 8
        },
        "id" : 3,
        "options" : {
          "legend" : {
            "calcs" : [],
            "displayMode" : "list",
            "placement" : "bottom",
            "showLegend" : true
          },
          "tooltip" : {
            "hideZeros" : false,
            "mode" : "single",
            "sort" : "none"
          }
        },
        "pluginVersion" : "12.2.0-16677249643",
        "targets" : [
          {
            "datasource" : {
              "type" : "prometheus",
              "uid" : "grafanacloud-prom"
            },
            "disableTextWrap" : false,
            "editorMode" : "builder",
            "expr" : "node_memory_MemTotal_bytes{job=\"$device_name\"}",
            "fullMetaSearch" : false,
            "includeNullMetadata" : true,
            "instant" : true,
            "legendFormat" : "memory_total",
            "range" : true,
            "refId" : "A",
            "useBackend" : false
          },
          {
            "datasource" : {
              "type" : "prometheus",
              "uid" : "grafanacloud-prom"
            },
            "disableTextWrap" : false,
            "editorMode" : "code",
            "expr" : "node_memory_MemTotal_bytes{job=\"$device_name\"} - node_memory_MemAvailable_bytes{job=\"$device_name\"}",
            "fullMetaSearch" : false,
            "includeNullMetadata" : true,
            "instant" : true,
            "key" : "Q-aa0bb47d-339e-4192-a9db-2d4e4b3cc487-1",
            "legendFormat" : "memory_usage",
            "range" : true,
            "refId" : "B",
            "useBackend" : false
          }
        ],
        "title" : "Memory",
        "type" : "timeseries"
      },
      {
        "id" : 1,
        "type" : "timeseries",
        "title" : "Temperature",
        "gridPos" : {
          "x" : 12,
          "y" : 8,
          "h" : 8,
          "w" : 12
        },
        "fieldConfig" : {
          "defaults" : {
            "custom" : {
              "drawStyle" : "line",
              "lineInterpolation" : "linear",
              "barAlignment" : 0,
              "barWidthFactor" : 0.6,
              "lineWidth" : 1,
              "fillOpacity" : 0,
              "gradientMode" : "none",
              "spanNulls" : false,
              "insertNulls" : false,
              "showPoints" : "auto",
              "showValues" : false,
              "pointSize" : 5,
              "stacking" : {
                "mode" : "none",
                "group" : "A"
              },
              "axisPlacement" : "auto",
              "axisLabel" : "",
              "axisColorMode" : "text",
              "axisBorderShow" : false,
              "scaleDistribution" : {
                "type" : "linear"
              },
              "axisCenteredZero" : false,
              "hideFrom" : {
                "tooltip" : false,
                "viz" : false,
                "legend" : false
              },
              "thresholdsStyle" : {
                "mode" : "off"
              }
            },
            "color" : {
              "mode" : "palette-classic"
            },
            "mappings" : [],
            "thresholds" : {
              "mode" : "absolute",
              "steps" : [
                {
                  "color" : "green",
                  "value" : null
                },
                {
                  "color" : "red",
                  "value" : 80
                }
              ]
            },
            "unit" : "celsius",
            "max" : 90,
            "min" : 30
          },
          "overrides" : []
        },
        "pluginVersion" : "12.2.0-17245430286.patch2",
        "targets" : [
          {
            "datasource" : {
              "type" : "prometheus",
              "uid" : "grafanacloud-prom"
            },
            "disableTextWrap" : false,
            "editorMode" : "builder",
            "expr" : "max(node_hwmon_temp_celsius{job=\"$device_name\"})",
            "fullMetaSearch" : false,
            "includeNullMetadata" : true,
            "instant" : false,
            "legendFormat" : "Temperature",
            "range" : true,
            "refId" : "A",
            "useBackend" : false
          }
        ],
        "datasource" : {
          "type" : "prometheus",
          "uid" : "grafanacloud-prom"
        },
        "options" : {
          "tooltip" : {
            "mode" : "single",
            "sort" : "none",
            "hideZeros" : false
          },
          "legend" : {
            "showLegend" : true,
            "displayMode" : "list",
            "placement" : "bottom",
            "calcs" : []
          }
        }
      },
      {
        "datasource" : {
          "type" : "prometheus",
          "uid" : "grafanacloud-prom"
        },
        "fieldConfig" : {
          "defaults" : {
            "color" : {
              "mode" : "thresholds"
            },
            "displayName" : "Disk usage",
            "mappings" : [],
            "min" : 0,
            "thresholds" : {
              "mode" : "percentage",
              "steps" : [
                {
                  "color" : "green",
                  "value" : 0
                },
                {
                  "color" : "red",
                  "value" : 80
                }
              ]
            },
            "unit" : "bytes"
          },
          "overrides" : []
        },
        "gridPos" : {
          "h" : 8,
          "w" : 5,
          "x" : 0,
          "y" : 16
        },
        "id" : 2,
        "options" : {
          "minVizHeight" : 75,
          "minVizWidth" : 75,
          "orientation" : "auto",
          "reduceOptions" : {
            "calcs" : [
              "lastNotNull"
            ],
            "fields" : "",
            "values" : false
          },
          "showThresholdLabels" : false,
          "showThresholdMarkers" : true,
          "sizing" : "auto"
        },
        "pluginVersion" : "12.2.0-16677249643",
        "targets" : [
          {
            "disableTextWrap" : false,
            "editorMode" : "builder",
            "expr" : "sum(node_filesystem_size_bytes{job=\"$device_name\"})",
            "fullMetaSearch" : false,
            "includeNullMetadata" : true,
            "legendFormat" : "Total disk size",
            "range" : true,
            "refId" : "A",
            "useBackend" : false
          },
          {
            "datasource" : {
              "type" : "prometheus",
              "uid" : "grafanacloud-prom"
            },
            "disableTextWrap" : false,
            "editorMode" : "builder",
            "expr" : "sum(node_filesystem_free_bytes{job=\"$device_name\"})",
            "fullMetaSearch" : false,
            "hide" : false,
            "includeNullMetadata" : true,
            "instant" : false,
            "legendFormat" : "Disk usage",
            "range" : true,
            "refId" : "B",
            "useBackend" : false
          }
        ],
        "title" : "Disk usage",
        "transformations" : [
          {
            "id" : "configFromData",
            "options" : {
              "applyTo" : {
                "id" : "byName",
                "options" : "Disk usage"
              },
              "configRefId" : "A",
              "mappings" : [
                {
                  "fieldName" : "Total disk size",
                  "handlerKey" : "max"
                }
              ]
            }
          }
        ],
        "type" : "gauge"
      }
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
