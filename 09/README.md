# Домашнее задание к занятию «Teamcity»

## Подготовка

* С помощью террформ создаю 3 виртуальные машины.

[tf create](https://github.com/A-Tagir/neto_ansible/tree/main/09/terraform)

![VMs ok](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_pre.png)

* Через веб-консоль ycloud добавляю переменную окружения SERVER_URL: "http://89.169.148.244/:8111"
  поскольку не разбобрался, как ее добавить автоматически.

* Делаю форк

* Запускаю playbook

![nexus playbook](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_playbook.png)

* Авторизую агент и делаю базовые настройки.

## Задание 1

* ![](image.png)
