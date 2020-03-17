ENV ?= dev

all:
	echo ${ENV}

deploy:
	ansible-playbook -i hosts/${ENV} $(O) docker-openstack.yml
	ansible-playbook -i hosts/${ENV} $(O) ja.yml
	ansible-playbook -i hosts/${ENV} $(O) apt.yml
	ansible-playbook -i hosts/${ENV} $(O) zsh.yml

zsh:
	ansible-playbook -i hosts/${ENV} zsh.yml

test:
	ansible -i hosts/${ENV} all -a "hostname -i" -o
