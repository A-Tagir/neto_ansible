vm_web_metadata = {
  serial-port-enable = "true"
}

each_vm = [
  {
    vm_name = "vm1"
    cpu   = 2
    ram  = 4
    disk_volume = 20
    core_fraction = 20
    preemptible = true
    nat=true
    serial-console = 1
  },
  {
    vm_name="vm2"
    cpu   = 2
    ram  = 4
    disk_volume = 20
    core_fraction = 20
    preemptible = true
    nat=true
    serial-console = 1
  },
]

