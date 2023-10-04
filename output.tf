output "linux_app_list_output"{
    value = flatten([
      for app in local.linux_app : [
        for linuxapps in try(app.linux_app, []) :{
          name=linuxapps.name
          resource_group_name=linuxapps.resource_group
          location=linuxapps.location
          os_type=linuxapps.os_type
          sku_name=linuxapps.sku_name
        }
     ]
])
}

output "linux_app_list_output_simple"{
  value = flatten([
            for app in local.linux_app ] : )
}

output "linux_app_output"{
  value = local.linux_app
}

