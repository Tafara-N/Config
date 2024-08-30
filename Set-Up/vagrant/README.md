# Vagrant

## Table of Content
- [Author](#author)
- [Description](#description)
- [Setup](#steps)

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
wget "https://releases.hashicorp.com/vagrant/2.2.19/vagrant_2.4.1_x86_64.deb"
sudo apt install ./vagrant_2.4.1_x86_64.deb
vagrant --version
```

## Author

**Tafara Nyamhunga  - [Github](https://github.com/tafara-n) / [Twitter](https://twitter.com/tafaranyamhunga)**
