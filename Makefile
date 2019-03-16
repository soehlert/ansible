.DEFAULT_GOAL := install

atomic:
	ansible-playbook playbooks/atomic.yml
containers:
	ansible-playbook playbooks/proxmox.yml -t containers
dns:
	ansible-playbook playbooks/dns.yml
dump_facts:
	ansible all -m setup --tree /tmp/facts --connection=local -i hosts 
gitlab:
	ansible-playbook playbooks/gitlab.yml
gmusic:
	ansible-playbook playbooks/gmusicdl.yml
init:
	ansible-playbook playbooks/setup.yml -u root -l ${TARGET}
install:
	ansible-playbook playbooks/common.yml 
netbox:
	ansible-playbook playbooks/netbox.yml
plex:
	ansible-playbook playbooks/plex.yml
proxmox:
	ansible-playbook playbooks/proxmox.yml
security:
	ansible-playbook playbooks/security.yml
