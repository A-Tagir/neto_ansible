# Домашнее задание к занятию «Работа с roles»

## Подготовка
* Разворачиваем три хоста для Clickhouse, Vector и Lighthouse на Yandex Cloud с помощью терраформ, делаем необходимые outputs,
  чтобы узнать внешние IP адреса хостов:

[terraform](https://github.com/A-Tagir/neto_ansible/tree/main/04/terraform)

* Применяем

* создаем репозитории vector-role и lighthouse-role, nginx-role
  
## Задание 1

* Создаем в старой версии playbook файл requirements.yml и заполняем его содержимым:
```
---
  - src: git@github.com:AlexeySetevoi/ansible-clickhouse.git
    scm: git
    version: "1.13"
    name: clickhouse 
```

## Задание 2

* Устанавливем папку для хранения roles
  
  export ANSIBLE_ROLES_PATH=/home/tiger/neto_ansible/04/roles

* Устанавливаем роль clickhouse

ansible-galaxy install -r requirements.yml

* правим site.yml для использования role clickhouse

[site.yml](https://github.com/A-Tagir/neto_ansible/blob/main/04/site.yml)


## Задание 3-5

* Переносим установку vector в role

[vector-role](https://github.com/A-Tagir/vector-role)

* Проверяю линтером, исправляю ошибки. К сожалению, винда перезагрузилась и вся история
  в консоли пропала. Поэтому, эта часть без скриншотов.

## Задание 6 

* Пишем документацию по vector-role

[README.md](https://github.com/A-Tagir/vector-role/blob/main/README.md)

## Задание 7

* Оформляем установку lighthouse и nginx в role

* Проверяем линтером role lighthouse 

[role lighthouse](https://github.com/A-Tagir/lighthouse-role)

ansible-lint site.yml

![ansible-lint](https://github.com/A-Tagir/neto_ansible/blob/main/04/AnsiHomework4_lh_linter.png)

* Исправляем ошибки

* Переносим установку nginx в role

[role nginx](https://github.com/A-Tagir/nginx-role)
  
* Проверяем линтером role nginx

## Задание 8

* Выкладываю роли в репозиторий с тегом версии v1.1.1
* добавляю в requirements и устанавливаю:
```
tiger@VM1:~/neto_ansible/04$ ansible-galaxy install -r requirements.yml
Starting galaxy role install process
- clickhouse (1.13) is already installed, skipping.
- lighthouse (v1.1.1) is already installed, skipping.
- extracting nginx to /home/tiger/neto_ansible/04/roles/nginx
- nginx (v1.1.1) was installed successfully
- extracting vector to /home/tiger/neto_ansible/04/roles/vector
- vector (v1.1.1) was installed successfully
```

## Задание 9 

* Дорабатываю playbook для использования roles

[site.yaml](https://github.com/A-Tagir/neto_ansible/blob/main/04/site.yml)

## Задание 10

* выкладываю в репозиторий playbook

[playbook](https://github.com/A-Tagir/neto_ansible/tree/main/04)

## Задание 11

* ссылки на role и playbook

[nginx-role](https://github.com/A-Tagir/nginx-role)

[vector-role](https://github.com/A-Tagir/vector-role)

[lighthouse-role](https://github.com/A-Tagir/lighthouse-role)

[playbook](https://github.com/A-Tagir/neto_ansible/tree/main/04)

## Данный playbook повторяет действия их задания к "Использование Ансибл"
## Но делает это с использование roles

* запускаем playbook

![playbook_error](https://github.com/A-Tagir/neto_ansible/blob/main/04/AnsiHomework4_play_error.png)

* получили ошибку, поскольку нарушена последовательность тасков. исправляем.

![play_ok](https://github.com/A-Tagir/neto_ansible/blob/main/04/AnsiHomework4_play_ok.png)

* Теперь все выполнилось без ошибок










