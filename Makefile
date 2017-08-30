deploy:
	ansible-playbook -i hosts docker-openstack.yml
	ansible-playbook -i hosts ja.yml
	ansible-playbook -i hosts apt.yml

