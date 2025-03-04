vm_teamcity_resources = {
  cores = 4
  core_fraction = 20
  memory = 4
  preemptible = "true"
  nat = "true"
}

vm_agent_resources = {
  cores = 2
  core_fraction = 20
  memory = 4
  preemptible = "true"
  nat = "true"
}

vm_web_metadata = {
  serial-port-enable = "true"
}
