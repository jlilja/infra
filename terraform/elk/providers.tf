provider "elasticstack" {
  kibana {
    endpoints = ["http://192.168.1.115:5601"]
  }

  elasticsearch {
    endpoints = ["http://192.168.1.115:9200"]
  }
}
