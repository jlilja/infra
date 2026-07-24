output "network_id" {
  value = unifi_network.this.id
}

output "network_name" {
  value = unifi_network.this.name
}

output "network_port_profile_id" {
  value = unifi_port_profile.this.id
}
