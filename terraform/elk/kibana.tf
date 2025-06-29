resource "elasticstack_kibana_data_view" "syslog_view" {
  data_view = {
    name            = "Edgerouter syslog"
    title           = "syslog-*-*-*"
    time_field_name = "@timestamp"
    namespaces      = ["infra"]
  }
}
