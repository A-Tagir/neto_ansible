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



