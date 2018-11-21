#!/bin/bash
# curl https://raw.githubusercontent.com/slauger/linux-training/master/cloud-init.sh | bash

(
echo 'SYSTEM IS NOT READY - PLEASE WAIT UP TO 120 SECONDS'
echo
) > /etc/motd

# running on centos
if [ -x /usr/bin/yum ]; then
  yum install -y epel-release
  yum install -y git ansible
fi

# running on debian
if [ -x /usr/bin/apt-get ]; then
  apt-get install -y git ansible
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
cd /root/ansible-training
ansible-playbook playbooks/setup.yml &> /root/ansible-init.log

(
echo " _             _       _             "
echo "| |_ _ __ __ _(_)_ __ (_)_ __   __ _ "
echo "| __| '__/ _` | | '_ \| | '_ \ / _` |"
echo "| |_| | | (_| | | | | | | | | | (_| |"
echo " \__|_|  \__,_|_|_| |_|_|_| |_|\__, |"
echo "                               |___/ "
) > /etc/motd
