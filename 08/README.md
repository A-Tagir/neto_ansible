# Домашнее задание к занятию «Jenkins»

## Подготовка

* Создаю виртуальные машины master и agent с помощью терраформ, выбираем образ centos-stream-9-oslogin
  поскольку он содержит необходимые версии python и java-jdk (17-21) и совместим с ansible

terraform apply

![VMs_ok](https://github.com/A-Tagir/neto_ansible/blob/main/08/CICD_jenkins_VMs_ok.png)

* Запускаю playbook

![playbook_ok](https://github.com/A-Tagir/neto_ansible/blob/main/08/CICD_jenkins_playbook_ok.png)

* Jenkis готов

![Jenkins_installed](https://github.com/A-Tagir/neto_ansible/blob/main/08/CICD_jenkins_ok.png)

* через plugin manager устанавливаем плагин Command Launcher

* Создаю freestyle job который устанавливает molecule

![freestyle job molecule]()
