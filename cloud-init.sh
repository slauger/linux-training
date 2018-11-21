#!/bin/bash
# curl https://raw.githubusercontent.com/slauger/linux-training/master/cloud-init.sh | bash

(
echo 'SYSTEM IS NOT READY - PLEASE WAIT UP TO 120 SECONDS'
echo
) > /etc/motd

# running on centos
if [ -x /usr/bin/yum ]; then
  yum install -y epel-release
  yum install -y git ansible figlet
fi

# running on debian
if [ -x /usr/bin/apt-get ]; then
  echo "deb http://ftp.debian.org/debian stretch-backports main" > /etc/apt/sources.list.d/backports.debian.org.list
  apt-get update
  apt-get install -y git figlet
  apt-get -t stretch-backports install -y ansible
fi

cd /root
(
  echo "[training]"
  echo "localhost ansible_connection=local"
) > /etc/ansible/hosts

git clone --bare https://github.com/slauger/linux-training.git

# clone training scripts
cd /root
git clone https://github.com/slauger/linux-training.git

# run playbook
cd /root/linux-training
ansible-playbook playbooks/setup.yml &> /root/ansible-init.log

# write motd
figlet training > /etc/motd
