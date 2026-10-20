# zeus

## Pre-Installation

- Add Cloudflare DNS record pointing to server
- Install Debian on server

## Installation

Update and upgrade apt package repository on server

```bash
sudo apt update && sudo apt upgrade
```

Install Ansible and Git on server

```bash
sudo apt install ansible git
```

Clone repository to server

```bash
git clone https://github.com/spencerdennison/zeus.git
```

Change into Ansible directory on server

```bash
cd zeus/ansible
```

Run Ansible playbooks on server

```bash
ansible-playbook local.yml --ask-become-pass --ask-vault-pass
```

## Post-Installation

Add server to Tailscale network

```bash
sudo tailscale up
```

Reboot server

```bash
sudo reboot
```

Generate new SSH key on control device

```bash
ssh-keygen -t ed25519 -f ~/.ssh/zeus
```

- Allow SSH using password, ensure to revert

Copy SSH key from control device to server

```bash
ssh-copy-id -i ~/.ssh/zeus.pub zeus@address
```
