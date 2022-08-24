locals {
  yaml_values = yamldecode(file("${path.module}/main.yaml"))

  map_list = {
    for domain, records in local.yaml_values : "${domain}" => {
      for record in records : "${substr(record.name, 0, 12)}-${md5(record.value)}" => record
    }
  }
}

module "default" {
  source = "./modules/default"

  for_each = local.map_list
  domain      = each.key
  record_list    = each.value
}

output "key" {
  value = module.default
}