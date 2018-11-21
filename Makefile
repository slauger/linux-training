INVENTORY=$(shell [ -f inventory/training.local.ini ] && echo inventory/training.local.ini || inventory/training.ini)

all:
	ansible-playbook -i ${INVENTORY} playbooks/setup.yml

clean:
	cd /root && rm -rf .viminfo .ansible .bash_history .config; \
	cd /home/training && rm -rf .viminfo .ansible .bash_history .config;