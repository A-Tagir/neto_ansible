# Ansible Playbook для домашнего задания «Работа с Playbook»

## Overview

Плейбук для установки и настройки ClickHouse и Vector

# Описание

Этот плейбук предназначен для автоматической установки и настройки двух систем: ClickHouse (аналитическая СУБД) и Vector (агент сбора логов). Он включает следующие этапы:

Установка ClickHouse.
Создание базы данных в ClickHouse.
Установка и настройка Vector.
# Требования

Ansible (core version 2.12.10)
Python 3.10.12

# Для успешного выполнения плейбука необходимо следующее:

Доступ к серверам через docker.
Права администратора (root) на целевых серверах.
Установленный Ansible версии 2.9 или выше.
Переменные
Следующие переменные используются в плейбуке:

clickhouse_version: Версия ClickHouse, которую нужно установить.
clickhouse_packages: Список пакетов ClickHouse для установки.
vector_version: Версия Vector, которую нужно установить.
Эти переменные определены в хостовых переменных.

# Хендлеры
Хендлеры используются для перезапуска служб после их установки и настройки:

Start clickhouse service: Перезапуск службы ClickHouse после установки пакетов.
Start vector service: Запуск службы Vector после развёртывания конфигурации.

# Задачи

Установка ClickHouse
Эта секция плейбука отвечает за установку ClickHouse на указанных серверах.

Получение пакетов ClickHouse: Загрузка необходимых RPM-пакетов с официального сайта ClickHouse.
Установка пакетов ClickHouse: Установка загруженных пакетов с помощью менеджера пакетов YUM.
Создание базы данных: Выполнение команды создания базы данных logs через утилиту clickhouse-client.
Установка Vector
Эта секция плейбука отвечает за установку и настройку агента сбора логов Vector.

Загрузка пакета Vector: Скачивание RPM-пакета Vector с официального репозитория Timber.io.
Установка Vector: Установка скачанного пакета с использованием менеджера пакетов YUM.
Развёртывание конфигурации Vector: Копирование настроенного конфигурационного файла Vector из шаблона Jinja2.

# Примеры использования
Чтобы запустить плейбук, выполните следующую команду:

ansible-playbook install_clickhouse_and_vector.yml -i inventory.ini


# Домашнее задание к занятию «Работа с Playbook»

## Подготовка
* копируем playbook в репозиторий

[ansible_homework2](https://github.com/A-Tagir/neto_ansible/tree/main/02)

* запускаем контейнер
  
docker run -dit --name clickhouse-01 pycontribs/centos:7 sleep 6000000

## Задание 1

* Подготовил inventory-файл prod.yml

[prod.yml](https://github.com/A-Tagir/neto_ansible/blob/main/02/inventory/prod.yml)

* Запустил playbook

![playbook_ok](https://github.com/A-Tagir/neto_ansible/blob/main/02/AnsiHomework2_1.png)

один установочный дистрибутив недоступен, но сработал rescue - видимо так задумывалось.

## Задание 2

* создаем папку template куда кладем конфиг vector с расширением .j2

[template](https://github.com/A-Tagir/neto_ansible/blob/main/02/template/config.yml.j2)

* запускаем второй контейнер

docker run -dit --name vector-01 pycontribs/centos:7 sleep 6000000

* Редактируем site.yml согласно заданию

[site.yml](https://github.com/A-Tagir/neto_ansible/blob/main/02/site.yml)

## Задание 5

* устанавливаем ansible-lint

pip3 install ansible-lint==5.4.0

* Проверяем 
```
ansible-lint site.yml
WARNING: PATH altered to include /usr/bin
WARNING  Overriding detected file kind 'yaml' with 'playbook' for given positional argument: site.yml
WARNING  Listing 1 violation(s) that are fatal
var-spacing: Variables should have spaces before and after: ./vector-{{vector_version}}-1.x86_64.rpm
site.yml:44 Task/Handler: Get vector

You can skip specific rules or tags by adding them to your configuration file:
# .ansible-lint
warn_list:  # or 'skip_list' to silence them completely
  - var-spacing  # Variables should have spaces before and after:  {{ var_name }}

Finished with 1 failure(s), 0 warning(s) on 1 files.
```
* исправляем

![lint_ok](https://github.com/A-Tagir/neto_ansible/blob/main/02/AnsiHomework2_2_lint_ok.png)

## Задание 6

* Запускаем playbook c --check

ansible-playbook --check site.yml -i inventory/prod.yml


![play check](https://github.com/A-Tagir/neto_ansible/blob/main/02/AnsiHomework2_6_check_ok.png)

## Задание 7

* Запускаем playbook c --diff

ansible-playbook --diff site.yml -i inventory/prod.yml

![diff_ok](https://github.com/A-Tagir/neto_ansible/blob/main/02/AnsiHomework2_6_diff_ok.png)

## Задание 8

* Повторно Запускаем playbook c --diff

ansible-playbook --diff site.yml -i inventory/prod.yml

![diff2_ok](https://github.com/A-Tagir/neto_ansible/blob/main/02/AnsiHomework2_6_diff2_ok.png)



