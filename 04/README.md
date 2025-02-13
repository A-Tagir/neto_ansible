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

ansible-lint site.yml

![ansible-lint]()







