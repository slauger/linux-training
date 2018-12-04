INVENTORY=$(shell [ -f inventory/training.local.ini ] && echo inventory/training.local.ini || echo inventory/training.ini)

all:
	git pull && \
	ansible-playbook -i ${INVENTORY} playbooks/setup.yml

desktop:
	git pull && \
	ansible-playbook -i ${INVENTORY} playbooks/desktop.yml