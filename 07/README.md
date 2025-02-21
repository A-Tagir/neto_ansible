# Домашнее задание к занятию «Жизненный цикл ПО»

## Подготовка

* Создаю виртуальные машина sonar и nexus с помощью терраформ

terraform apply

![vm_create](https://github.com/A-Tagir/neto_ansible/blob/main/07/CICD_yacloud_setup.png)

* Вставляем IP адреса машин в inventory и запускаем playbook

ansible-playbook site.yml -i ./inventory/cicd/hosts.yml

ошибка 

```
TASK [Install PostgreSQL] ****************************************************************
fatal: [sonar-01]: FAILED! => {"changed": false, "msg": "Failure talking to yum: Cannot fi            nd a valid baseurl for repo: base/7/x86_64"}
```

* Правим файл CentOS-Base.repo и в playbook меняем версию PostgreSQL c 11 на 12

* Запускаем playbook и все получилось

![sonar&nexus_install](https://github.com/A-Tagir/neto_ansible/blob/main/07/CICD_sonar_nexus_install.png)

* Заходим в интерфейсы и меняем пароли

![sonar](https://github.com/A-Tagir/neto_ansible/blob/main/07/CICD_sonar_ok.png)

![nexus](https://github.com/A-Tagir/neto_ansible/blob/main/07/CICD_nexus_ok.png)

## Знакомство с SonarQube

*




