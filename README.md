# Table of Contents   

    * [Pre-Installation](#pre-installation)
    * [Installation](#installation)
    * [Post-Installation](#post-installation)
    * [Architecture](#architecture)

# zeus

Configuration for my server.

## Pre-Installation

- Add Cloudflare DNS record pointing to server
- Install Debian on server

## Installation

- All steps are performed on the server

Update and upgrade apt package repository

```bash
sudo apt update && sudo apt upgrade
```

Install Ansible and Git

```bash
sudo apt install ansible git
```

Clone repository

```bash
git clone https://github.com/spencerdennison/zeus.git
```

Change directory to zeus

```bash
cd zeus
```

Allow execute permissions for provisioning script

```bash
chmod +x provision.sh
```

Run Ansible playbooks

```bash
./provision
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

- Briefly Allow SSH to server using password, ensure to revert

Copy SSH key from control device to server

```bash
ssh-copy-id -i ~/.ssh/zeus.pub administrator@zeus.spencerdennison.com
```

## Architecture

![Architecture Diagram](docs/architecture-diagram.png)
