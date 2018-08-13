.DEFAULT_GOAL := install

cockpit:
	ansible-playbook playbooks/cockpit.yml
containers:
	ansible-playbook playbooks/proxmox.yml -t containers
dump_facts:
	ansible all -m setup --tree /tmp/facts --connection=local -i hosts 
install:
	ansible-playbook playbooks/setup.yml -u root -l setup -k
plex:
	ansible-playbook playbooks/plex.yml -K -i hosts
