# linux-training

Base image configuration for my linux trainings.

## Prepare Training Environment

The playbook `playbooks/setup.yml` will prepare the machine for the training.

## Debian
- Install additional repositories
  - backports.debian.org (debian-backports)
  - apt.puppetlabs.com (puppet)
  - packages.chef.io (chef)
  - download.docker.com (docker-ce)
  - packages.cisofy.com (lynis)
  - deb.theforeman.org (foreman)
  - artifacts.elastic.co (elasticsearch)
- Install dependency packages and toolings
- Install open-vm-tools if running on a virtual machine
- Install Docker, Puppet, Ansible
- Install Lynis and some other security tools

## CentOS
- Install additional repositories
  - fedoraproject.org (epel)
  - yum.puppetlabs.com (puppet)
  - packages.chef.io (chef)
  - packages.cisofy.com (lynis)
  - yum.theforeman.org (foreman)
  - packages.cisofy.com (lynis)
  - pulpproject.org (pulp)
- Install dependency packages and toolings
- Install open-vm-tools if running on a virtual machine
- Install Docker, Puppet, Ansible
- Install Lynis, Inspec and some other security tools

## Prepare desktop environment

The playbook `playbooks/desktop.yml` will install a desktop environment with firefox, gnome-terminal and Microsoft Visual Code on your box.

## Usage with cloud-init

The repository provides a `cloud-init.sh` script for easy usage with cloud-init setups.

```
curl https://raw.githubusercontent.com/slauger/linux-training/master/cloud-init.sh | bash
```

## Development environment

- https://code.visualstudio.com
- https://atom.io
- https://www.jetbrains.com/idea/

## Author

- [slauger](https://github.com/slauger)
