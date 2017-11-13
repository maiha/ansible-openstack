ENV ?= dev

all:
	echo ${ENV}

deploy:
	ansible-playbook -i hosts/${ENV} docker-openstack.yml
	ansible-playbook -i hosts/${ENV} ja.yml
	ansible-playbook -i hosts/${ENV} apt.yml
	ansible-playbook -i hosts/${ENV} zsh.yml

test:
	ansible -i hosts/${ENV} all -a "hostname -i" -o
