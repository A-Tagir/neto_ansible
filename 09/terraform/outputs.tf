output "vm_teamcity_name" {
  value = [
           for web in yandex_compute_instance.teamcity : web.name
          ]
  description = "vm teamcity name"
}

output "vm_teamcity_ip" {
  value = [
           for web in yandex_compute_instance.teamcity : web.network_interface.0.nat_ip_address
          ]
  description = "vm web ip"
}


output "vm_agent_name" {
  value = [
           for web in yandex_compute_instance.agent : web.name
          ]
  description = "vm teamcity name"
}

output "vm_agent_ip" {
  value = [
           for web in yandex_compute_instance.agent : web.network_interface.0.nat_ip_address
          ]
  description = "vm agent ip"
}

output "vm_nexus_name" {
  value = [
           for web in yandex_compute_instance.nexus : web.name
          ]
  description = "vm nexus name"
}

output "vm_nexus_ip" {
  value = [
           for web in yandex_compute_instance.nexus : web.network_interface.0.nat_ip_address
          ]
  description = "vm nexus ip"
}

