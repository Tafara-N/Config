# Vagrant

## Table of Content
- [Author](#author)
- [Description](#description)
- [Setup](#steps)
- [Usage](#using-vagrant-on-ubuntu-2404)

# Description

**How to install Vagrant on Ubuntu**

## Steps

> **Tip: First install [Virtual Box](../virtualbox/README.md)**

### Installation

1. **Visit [Vagrant](https://developer.hashicorp.com/vagrant) | [Install](https://developer.hashicorp.com/vagrant/install)**

```bash
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install vagrant
```

**OR**

2. **Choose the release [version](https://releases.hashicorp.com/vagrant/) you want**

```bash
wget "https://releases.hashicorp.com/vagrant/2.4.1/vagrant_2.4.1_x86_64.deb"
sudo apt install ./vagrant_2.4.1_x86_64.deb
vagrant --version
```

## Using Vagrant On Ubuntu 24.04

```bash
mkdir ~/vagrant_project && cd ~/vagrant_project
```

**Visit the [website](https://portal.cloud.hashicorp.com/vagrant/discover) and choose your VagrantBox (built-in virtual environment image of operating system).**

> In our case, we picked **bento/ubuntu-20.04** and run the following command

```bash
vagrant init bento/ubuntu-20.04
vagrant up
```

> ***SSH:** Now we can SSH into the vagrant machine.

> **Tip: Make sure the machine is up and running.**

```bash
vagrant up
vagrant ssh
```

> **If successful:** To view it, open the VirtualBox on your system.

> **Note:** You must have a virtualization provider software on your machine as we have [VirtualBox](../virtualbox/README.md).

## Author

**Tafara Nyamhunga  - [Github](https://github.com/tafara-n) / [Twitter](https://twitter.com/tafaranyamhunga)**
