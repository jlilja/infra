resource "pihole_list" "stevenblack" {
  address = "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"
  type    = "block"
  enabled = true
  comment = "StevenBlack list"
}