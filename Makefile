.DEFAULT_GOAL := plex

dump_facts:
	ansible all -m setup --tree /tmp/facts --connection=local -i hosts 
plex:
	ansible-playbook playbooks/plex.yml -K -i hosts
