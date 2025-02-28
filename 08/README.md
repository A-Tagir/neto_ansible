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

## Задание 1

* Создаю freestyle job который устанавливает molecule

![freestyle job molecule](https://github.com/A-Tagir/neto_ansible/blob/main/08/CICD_jenkins_freestyle_molecule.png)

* Запускаю

![molecule install](https://github.com/A-Tagir/neto_ansible/blob/main/08/CICD_jenkins_freestyle_molecule_install_ok.png)

* Создаю freestyle job, который скопирует роль из репозитория и запустит molecule test на агенте

![test_job](https://github.com/A-Tagir/neto_ansible/blob/main/08/CICD_jenkins_freestyle_test_job.png)

* Список задач

![jobs](https://github.com/A-Tagir/neto_ansible/blob/main/08/CICD_jenkins_freestyle_jobs.png)

* Запускаю

![test_job_molecule](https://github.com/A-Tagir/neto_ansible/blob/main/08/CICD_jenkins_freestyle_test_job_aborted.png)

Задача виснет на Gathering Facts, если изменить образ на CentOS8 то Gathering Facts проходит, но возникеет проблема
с установкой поскольку репозитории уже недоступны. Для решенея необходимо поправить файлы репозитория. Не осилил по времени.

## Задание 2





