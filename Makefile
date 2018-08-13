.DEFAULT_GOAL := install

containers:
	ansible-playbook playbooks/proxmox.yml -t containers
dump_facts:
	ansible all -m setup --tree /tmp/facts --connection=local -i hosts 
init:
	ansible-playbook playbooks/setup.yml -u root -l setup -k
install:
	ansible-playbook playbooks/common.yml 
plex:
	ansible-playbook playbooks/plex.yml -K -i hosts
proxmox:
	ansible-playbook playbooks/proxmox.yml
