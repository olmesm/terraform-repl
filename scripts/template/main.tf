locals {
  yaml_values = yamldecode(file("${path.module}/main.yaml"))

  manipulated_data = { for obj in local.yaml_values : "${substr(obj.name, 0, 12)}-${md5(obj.value)}" => obj }
}

output "default" {
  value = local.manipulated_data
}