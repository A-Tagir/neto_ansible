# Домашнее задание к занятию «Teamcity»

## Подготовка

* С помощью террформ создаю 3 виртуальные машины.

[tf create](https://github.com/A-Tagir/neto_ansible/tree/main/09/terraform)

![VMs ok](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_pre.png)

* Через веб-консоль ycloud добавляю переменную окружения SERVER_URL: "http://89.169.148.244/:8111"
  поскольку не разобрался, как ее добавить автоматически.

* Делаю форк

* Запускаю playbook

![nexus playbook](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_playbook.png)

* Авторизую агент и делаю базовые настройки.

## Задание 1

* Создаю новый проект
  
![new project](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_project.png)

## Задание 2

* Autodetect конфигурации

  ![config](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_build_step.png)

## Задание 3

* Первая сборка

![build 1](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_first_build.png)

## Задание 4

* Создаем условие если branch не содержит maстер то делаем clean test
  
* Создаем Build step 2 (копируем первый) и условие если branch содержит maстер то делаем clean deploy

![conditions](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_build_steps_condition.png)

## Задание 5

* загружаем settings.xml c данными nexus

[settings.xml](https://github.com/A-Tagir/neto_ansible/blob/main/09/settings.xml)

## Задание 6

* В pom.xml меняем ссылки

[pom.xml](https://github.com/A-Tagir/example-teamcity/blob/master/pom.xml)

## Задание 7

* Запускаю сборку по master, всё прошло успешно и артефакт появился в nexus

![build_passed](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_build_conditional_passed.png)

![uploaded_to_nexus](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_build_uploaded_to_nexus.png)

![nexus](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_build_nexus.png)

## Задание 8


