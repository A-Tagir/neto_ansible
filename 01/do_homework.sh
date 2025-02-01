#!/bin/sh
docker start centos7
docker start fedora
docker start ubuntu
ansible-playbook site.yml -i inventory/prod.yml --vault-password-file ./vault.txt
docker stop centos7
docker stop fedora
docker stop ubuntu
