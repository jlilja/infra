# module "trusted" {
#   source = "./modules/address-group"

#   name  = local.trusted.name
#   cidrs = [local.trusted.ip_range]
# }

# module "homelab" {
#   source = "./modules/address-group"

#   name  = local.homelab.name
#   cidrs = [local.homelab.ip_range]
# }

# module "infrastructure" {
#   source = "./modules/address-group"

#   name  = local.infrastructure.name
#   cidrs = [local.infrastructure.ip_range]
# }

# module "nas" {
#   source = "./modules/address-group"

#   name  = local.nas.name
#   cidrs = [local.nas.ip_range]
# }

# module "iot" {
#   source = "./modules/address-group"

#   name  = local.iot.name
#   cidrs = [local.iot.ip_range]
# }
