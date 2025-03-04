resource "yandex_compute_instance" "teamcity" {
  count = 1
  name = "teamcity-${count.index+1}"
  platform_id  = var.vm_web_platform_id

  resources {
    cores = var.vm_teamcity_resources.cores
    memory = var.vm_teamcity_resources.memory
    core_fraction = var.vm_teamcity_resources.core_fraction
  }
  
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.container-optimized-image.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vm_teamcity_resources.preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat = var.vm_teamcity_resources.nat
    security_group_ids = [yandex_vpc_security_group.ansible.id]
  }
  metadata = {
    user-data          = data.template_file.cloudinit.rendered
    serial-port-enable = var.vm_web_metadata.serial-port-enable
    ssh-keys           = local.ssh_key
    docker-container-declaration = file("${path.module}/declaration.yml")
  }
}

resource "yandex_compute_instance" "agent" {
  count = 1
  name = "agent-${count.index+1}"
  platform_id  = var.vm_web_platform_id
  resources {
    cores = var.vm_agent_resources.cores
    memory = var.vm_agent_resources.memory
    core_fraction = var.vm_agent_resources.core_fraction
  }
  
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.container-optimized-image.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vm_agent_resources.preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat = var.vm_teamcity_resources.nat
    security_group_ids = [yandex_vpc_security_group.ansible.id]
  }
  metadata = {
    user-data          = data.template_file.cloudinit.rendered
    serial-port-enable = var.vm_web_metadata.serial-port-enable
    ssh-keys           = local.ssh_key
    docker-container-declaration = file("${path.module}/agent.yml")
  }
}

resource "yandex_compute_instance" "nexus" {
  count = 1
  name = "nexus-${count.index+1}"
  platform_id  = var.vm_web_platform_id
  resources {
    cores = var.vm_agent_resources.cores
    memory = var.vm_agent_resources.memory
    core_fraction = var.vm_agent_resources.core_fraction
  }
  
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.centos-7.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vm_agent_resources.preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat = var.vm_teamcity_resources.nat
    security_group_ids = [yandex_vpc_security_group.ansible.id]
  }
  metadata = {
    user-data          = data.template_file.cloudinit.rendered
    serial-port-enable = var.vm_web_metadata.serial-port-enable
    ssh-keys           = local.ssh_key
  }
}


