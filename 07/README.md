# Домашнее задание к занятию «Жизненный цикл ПО»

## Подготовка

* Создаю виртуальные машина sonar и nexus с помощью терраформ

terraform apply

![vm_create](https://github.com/A-Tagir/neto_ansible/blob/main/07/CICD_yacloud_setup.png)

* Вставляем IP адреса машин в inventory и запускаем playbook

ansible-playbook site.yml -i ./inventory/cicd/hosts.yml

ошибка 

```
TASK [Install PostgreSQL] ****************************************************************
fatal: [sonar-01]: FAILED! => {"changed": false, "msg": "Failure talking to yum: Cannot fi            nd a valid baseurl for repo: base/7/x86_64"}
```

* Правим файл CentOS-Base.repo и в playbook меняем версию PostgreSQL c 11 на 12

* Запускаем playbook и все получилось

![sonar&nexus_install](https://github.com/A-Tagir/neto_ansible/blob/main/07/CICD_sonar_nexus_install.png)

* Заходим в интерфейсы и меняем пароли

![sonar](https://github.com/A-Tagir/neto_ansible/blob/main/07/CICD_sonar_ok.png)

![nexus](https://github.com/A-Tagir/neto_ansible/blob/main/07/CICD_nexus_ok.png)

## Знакомство с SonarQube

* Создаю проект netology, выбираю local, создаю токен.
* Скачиваю и устанавливаю sonar-scanner (распаковал и прописал export PATH)
  
![sonar-scanner](https://github.com/A-Tagir/neto_ansible/blob/main/07/CICD_sonar_scanner_version.png)

* Запускаю для файла fail.py
```
sonar-scanner   -Dsonar.projectKey=Netology   -Dsonar.sources=.   -Dsonar.host.url=http://158.160.45.27:9000   /
-Dsonar.login=96af815b6991f8687fbcb23fd3ddf52a2ffdd80f -Dsonar.coverage.exclusions=fail.py
```
![sonar_exec](https://github.com/A-Tagir/neto_ansible/blob/main/07/CICD_sonar_scanner_exec.png)

* Нашлось 2 баги и 1 Code smells

![sonar_result](https://github.com/A-Tagir/neto_ansible/blob/main/07/CICD_sonar_scanner_result.png)

* Исправляем  (=+ to += и обе ошибки исчезают,  убираю pass и это решает Code smells)  Запускаем повторно

![sonar_no error](https://github.com/A-Tagir/neto_ansible/blob/main/07/CICD_sonar_scanner_no_errors.png)

## Знакомство с Nexus

* Загружаем артефакт с заданными параметрами, загружаем второй с новой версией, выгружаем xml

![uploaded](https://github.com/A-Tagir/neto_ansible/blob/main/07/CICD_nexus_uploaded.png)


[maven-metadata](https://github.com/A-Tagir/neto_ansible/blob/main/07/maven-metadata.xml)

## Знакомство с Maven

* Скачиваем дистрибутив

wget https://dlcdn.apache.org/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.tar.gz

* Распаковываем 

gunzip apache-maven-3.9.9-bin.tar.gunzip

tar -xvf apache-maven-3.9.9-bin.tar

* Добавляем PATH   export PATH=$(pwd):$PATH

* устанавливаем java 

sudo apt install openjdk-8-jdk

* Проверяем

![mvn_ok](https://github.com/A-Tagir/neto_ansible/blob/main/07/CICD_mvn_ok.png)

* копирую pom.xml

### Основная часть

* Редактирую pom.xml

[pom.xml](https://github.com/A-Tagir/neto_ansible/blob/main/07/mvn/pom.xml)

* запускаю mvn package

![mvn package ok](https://github.com/A-Tagir/neto_ansible/blob/main/07/CICD_mvn_package_ok.png)

* проверяю директорию ~/.m2/repository/

![m2/repository](https://github.com/A-Tagir/neto_ansible/blob/main/07/CICD_mvn_m2_repo.png)

* pom.xml

[pom.xml](https://github.com/A-Tagir/neto_ansible/blob/main/07/mvn/pom.xml)



