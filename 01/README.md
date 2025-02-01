# Домашнее задание к занятию «Введение в Ansible»

## Подготовка
  
apt install python3-pip

pip3 install ansible

```

ansible --version
ansible [core 2.12.10]
  config file = /etc/ansible/ansible.cfg
  configured module search path = ['/home/tiger/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /home/tiger/.local/lib/python3.10/site-packages/ansible
  ansible collection location = /home/tiger/.ansible/collections:/usr/share/ansible/collections
  executable location = /home/tiger/.local/bin/ansible
  python version = 3.10.12 (main, Jan 17 2025, 14:35:34) [GCC 11.4.0]
  jinja version
  libyaml = True 
```

* Создаю репозиторий 

[ansible_homeworks](https://github.com/A-Tagir/neto_ansible/tree/main)


* Копирую playbook
  
git clone git@github.com:netology-code/mnt-homeworks.git

git add .

git commit . -m 'initial'

git push origin main

## Задание 1

![ansible-playbook](https://github.com/A-Tagir/neto_ansible/blob/main/01/AnsiHomework1_1.png)

## Задание 2

правим файл /group_vars/all/example.yml

![ansible-playbook_all default fact](https://github.com/A-Tagir/neto_ansible/blob/main/01/AnsiHomework1_2.png)

## Задание 3

* Настраиваем среду
```
 docker run -dit --name centos7 pycontribs/centos:7 sleep 6000000
 docker run -dit --name ubuntu pycontribs/ubuntu:latest sleep 6000000
```
## Задание 4

ansible-playbook site.yml -i inventory/prod.yml

![ansible_prod](https://github.com/A-Tagir/neto_ansible/blob/main/01/AnsiHomework1_4.png)

## Задание 5

* делаем необходимые правки
  
[deb examp.yml](https://github.com/A-Tagir/neto_ansible/blob/main/01/group_vars/deb/examp.yml)


[el examp.yml](https://github.com/A-Tagir/neto_ansible/blob/main/01/group_vars/el/examp.yml)

## Задание 6

![default fact](https://github.com/A-Tagir/neto_ansible/blob/main/01/AnsiHomework1_5.png)

## Задание 7

* Шифруем непосредственно значения

![vault_encrypt](https://github.com/A-Tagir/neto_ansible/blob/main/01/AnsiHomework1_7.png)

## Задание 8

* запускаем с ключом --ask-vault-password

![vault_password](https://github.com/A-Tagir/neto_ansible/blob/main/01/AnsiHomework1_8.png)

## Задание 9

* ansible-doc -t connection -l
![ansible-doc](https://github.com/A-Tagir/neto_ansible/blob/main/01/AnsiHomework1_9.png)

## Задание 10

* Добавляем группу хостов с именем local

[prod.yml](https://github.com/A-Tagir/neto_ansible/blob/main/01/inventory/prod.yml)

## Задание 11

![local](https://github.com/A-Tagir/neto_ansible/blob/main/01/AnsiHomework1_10.png)

## Задание 12 и 13

[git_repo](https://github.com/A-Tagir/neto_ansible/tree/main/01)

## Задания необязательные

1-2  В обязательной части я понял задание, как то что нужно зашифровать отдельные переменные
и уже сделал это. Не хочу уже переделывать задание, надеюсь простите мне эту оплошность.

## необязательное 4 

docker run -dit --name fedora pycontribs/fedora sleep 6000000

* Запускаем 

```
ansible-playbook site.yml -i inventory/prod.yml --ask-vault-password
Vault password:
[WARNING]: Found both group and host with same name: fedora

PLAY [Print os facts] *****************************************************************************************

TASK [Gathering Facts] ****************************************************************************************
fatal: [fedora]: FAILED! => {"ansible_facts": {}, "changed": false, "failed_modules": {"ansible.legacy.setup": {"failed": true, "module_stderr": "/bin/sh: /usr/bin/python: No such file or directory\n", "module_stdout": "", "msg": "The module failed to execute correctly, you probably need to set the interpreter.\nSee stdout/stderr for the exact error", "rc": 127}}, "msg": "The following modules failed to execute: ansible.legacy.setup\n"}
ok: [localhost]
ok: [ubuntu]
ok: [centos7]
```

* Обновляем Федору

docker exec -it fedora bash

yum updat

* переименовываем группу fedora в fed (чтобы не both group and host with same name: fedora)

* запускаем повторно

ansible-playbook site.yml -i inventory/prod.yml --ask-vault-password

![playbook_with_fed](https://github.com/A-Tagir/neto_ansible/blob/main/01/AnsiHomework1_2_4.png)

## необязательное 5

* Автоматизируем процесс

[do_homework.sh](https://github.com/A-Tagir/neto_ansible/blob/main/01/do_homework.sh)

![done_ok](https://github.com/A-Tagir/neto_ansible/blob/main/01/AnsiHomework1_2_5.png)
