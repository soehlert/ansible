.DEFAULT_GOAL := install

atomic:
	ansible-playbook playbooks/atomic.yml
containers:
	ansible-playbook playbooks/proxmox.yml -t containers
cloudflare:
	ansible-playbook playbooks/cloudflare.yml
docker-deploy:
	ansible-playbook playbooks/docker.yml
dns:
	ansible-playbook playbooks/dns.yml
dump_facts:
	ansible $(TARGET) -m setup --tree /tmp/facts --connection=local -i hosts 
gitlab:
	ansible-playbook playbooks/gitlab.yml
gmusic:
	ansible-playbook playbooks/gmusicdl.yml
# example: make init TARGET=somehost
init:
	ansible-playbook playbooks/setup.yml -u root -l ${TARGET}
install:
	ansible-playbook playbooks/common.yml -b -l $(TARGET)
netbox:
	ansible-playbook playbooks/netbox.yml
plex:
	ansible-playbook playbooks/plex.yml
proxmox:
	ansible-playbook playbooks/proxmox.yml
security:
	ansible-playbook playbooks/security.yml
unifi:
	ansible-playbook playbooks/unifi.yml
