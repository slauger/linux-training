INVENTORY=$(shell [ -f inventory/training.local.ini ] && echo inventory/training.local.ini || echo inventory/training.ini)

all:
	ansible-playbook -i ${INVENTORY} playbooks/setup.yml

clean:
	rm -rf /root/.bash_history
