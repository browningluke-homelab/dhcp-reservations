locals {
  mac_list      = yamldecode(file("${path.module}/../data_sources/reservations.yml"))
  mac_addresses = { for each in local.mac_list.reservations : each.hostname => each.mac }
}
