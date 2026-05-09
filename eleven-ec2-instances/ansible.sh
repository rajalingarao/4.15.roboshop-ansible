#!/bin/bash
dnf install ansible -y
cd /tmp
git clone https://github.com/rajalingarao/4.15.roboshop-ansible.git

cd 4.15.roboshop-ansible
ansible-playbook -i inventory.ini mysql.yaml
ansible-playbook -i inventory.ini mysql.yaml #Run twice mysql.yaml
ansible-playbook -i inventory.ini mongodb.yaml
ansible-playbook -i inventory.ini redis.yaml
ansible-playbook -i inventory.ini rabbitmq.yaml

ansible-playbook -i inventory.ini catalogue.yaml
ansible-playbook -i inventory.ini cart.yaml
ansible-playbook -i inventory.ini user.yaml
ansible-playbook -i inventory.ini shipping.yaml
ansible-playbook -i inventory.ini payment.yaml
ansible-playbook -i inventory.ini dispatch.yaml

ansible-playbook -i inventory.ini web.yaml

