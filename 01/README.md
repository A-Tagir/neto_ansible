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



