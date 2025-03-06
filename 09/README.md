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

* Мигрирую build configuration в репозиторий. Для этого создаю репозиторий, делаю pull на рабочую машину

[teamcity branch master](https://github.com/A-Tagir/example-teamcity/tree/master)

* Создаю token для доступа к репозиторию, и добавляю данные в Teamcity

![migrate](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_migrate_to_github.png)

## Задание 9

* Создаю новую ветку feature/add_reply

[branch feature/add_reply](https://github.com/A-Tagir/example-teamcity/tree/feature/add_reply)

## Задание 10

* Написал новый метод для класса Welcomer: метод возвращает реплику "Hello good hunter"

[Welcomer.java](https://github.com/A-Tagir/example-teamcity/blob/feature/add_reply/src/main/java/plaindoll/Welcomer.java)

## Задание 11

* Дополнил тест для нового метода на поиск слова hunter в новой реплике

[WelcomerTest.java](https://github.com/A-Tagir/example-teamcity/blob/feature/add_reply/src/test/java/plaindoll/WelcomerTest.java)

## Задание 12

* Сделал push ветки feature/add_reply

![push](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_push_to_feature.png)

## Задание 13

* Сборка автоматически запустилась и прошла успешно 

![test pass](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_build_welcomer_ok.png)

## Задание 14

* Вношу изменения из ветки feature/add_reply в master

![merge](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_merge.png)

## Задание 15

* Проверяем, что ветка мастер без build_passed

![no builds](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_master_no_builds.png)

## Задание 16

* Настраиваю, чтобы артефакты собирались в jar. Для этого нужно нажать кнопку браузинга в интерфейсе Teamcity в разделе Build - General settings
  и выбрать нужные файлы
![artifacte_to_jar](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_artifacts_to_jar.png)

## Задание 17

* Проверяю сборку, артефакты появились.

![artifacts are present](https://github.com/A-Tagir/neto_ansible/blob/main/09/CICD_Teamcity_artifacts.png)

## Задание 18

* Проверьте, что конфигурация в репозитории содержит все настройки конфигурации из teamcity

В начале задания не было указано, что настройки нужно хранить в репозитории. Надеюсь это не сильно важно и не 
повлияет на результат проверки. 

[example-teamcity](https://github.com/A-Tagir/example-teamcity)


[homework repo](https://github.com/A-Tagir/neto_ansible/tree/main/09)



