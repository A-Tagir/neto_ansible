# Домашнее задание к занятию «Жизненный цикл ПО»

## Подготовка

* Устанавливаю jira

docker run -v jiraVolume:/var/atlassian/application-data/jira --name="jira" -d -p 8080:8080 atlassian/jira-software

* Запускаю базу данных для Jira

docker run --name neto-pg -p 5432:5432 -e POSTGRES_PASSWORD=qwer1234 -d postgre

* Заходим в jira и делаем настройки

http://172.20.140.227:8080


* Настраиваем базу данных

![db_setup](https://github.com/A-Tagir/neto_ansible/blob/main/06/CICD_jira_setup1.png)

* получаем временный сертификат на сайте и готово:

![Jira_ok](https://github.com/A-Tagir/neto_ansible/blob/main/06/CICD_jira_setup2.png)

## Задание 1

* Создаем панель Kanban

* Создаем проект и workflow bug

![workflow bug](https://github.com/A-Tagir/neto_ansible/blob/main/06/CICD_workflow_bug.png)

* Создаем workflow для других задач

![workflow others](https://github.com/A-Tagir/neto_ansible/blob/main/06/CICD_workflow_others.png)

* В панели Kanban создаем нужные колонки и двигаем задачи согласно workflow

![flow_ok](https://github.com/A-Tagir/neto_ansible/blob/main/06/CICD_workflow_ok.png)

* Создаем задачи заново, поскольку их нужно было вести до Done, а я закрыл.

* Создаем панель Scrum и создаем необходимые согласно логике колонки.

* Создаем Sprint и ведем задачи в панели Scrum.

![scrum_flow_ok](https://github.com/A-Tagir/neto_ansible/blob/main/06/CICD_workflow_scrum_ok.png)

XML bug workflow:

[bug_xml](https://github.com/A-Tagir/neto_ansible/blob/main/06/bug_workflow.xml)


XML others workflow

[others_xml](https://github.com/A-Tagir/neto_ansible/blob/main/06/classic%20default%20workflow.xml)
