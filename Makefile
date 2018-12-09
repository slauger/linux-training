INVENTORY=$(shell [ -f inventory/training.local.ini ] && echo inventory/training.local.ini || echo inventory/training.ini)

all:
	ansible-playbook -i ${INVENTORY} playbooks/setup.yml

desktop:
	ansible-playbook -i ${INVENTORY} playbooks/desktop.yml

trouble:
	@ansible-playbook -i ${INVENTORY} playbooks/troubleshooting.yml > /dev/null 2>&1 || true
