# How To Set Web Apps On Ubuntu: Web App Manager

## Table of Content
- [Author](#author)
- [Description](#description)
- [Installation](#installation)
- [Issues](#problem-with-webapp-manager-in-ubuntu-2404-lts-and-2204-lts)
- [Set Up](#set-up)
- [Shortcuts](#webapp-manager-shortcuts)

# Description

This detailed guide will help you understand what a Webapp is, its advantages, difference between the traditional apps and webapps, and finally how to easily install webapps using [Webapp Manager](http://packages.linuxmint.com/pool/main/w/webapp-manager/) `**NB: Unsecure site**` tool on your Linux computer.

## Installation

**Sites:**

- [OS Technix](https://ostechnix.com/linux-mint-webapp-manager/)

- [Download Webapp Manager .deb file](http://packages.linuxmint.com/search.php?release=any%C2%A7ion=any&keyword=webapp-manager)

```bash
cd ~
wget http://packages.linuxmint.com/pool/main/w/webapp-manager/webapp-manager_1.3.7_all.deb
sudo apt install gdebi
sudo gdebi webapp-manager_1.3.7_all.deb
```

## Set Up

### Convert Webapps into Standalone Apps using Webapp Manager

**To install any webapps using Webapp Manager, follow the steps below.**

#### Creating a Web App

**Launch the Webapp Manager from the Dash or menu:**

**Search Web App:**

![Search Web App](images/webapp.png)
___

**This is how the default interface of Webapp Manager looks like.**

![Interface](images/interface.png)
___

**Creating, Adding, Modifying Apps**

In the Webapp Manager application window, click the plus (+) icon or `ctrl+N` and enter the URL of the website you want to turn into an app.

You can also customize the web app by adjusting the different settings . For instance, you can set the icon for your web app, the default browser to open that app (E.g. Firefox or Google Chrome), category of the web app (E.g. Website or Office), and enable or disable navigation bars and incognito window etc.

Once you entered all the details, click the OK button.

![Create or Manage Apps](images/create.png)
___

**Accessing Web Apps**

Once created, these web apps can be accessed either from the Webapp Manager interface itself or from the system's application menu, just like any other installed software.

> **From Webapp Manager Menu:**

![Accessing Apps](images/apps.png)

> **From System's Application Menu:**

![Accessing Apps](images/search.png)

**Apps can be pinned to the dock as well:**

> To pin the app: Just pin as you would with any other apps.

![Pinning Apps](images/pinned_to_dock.png)

## Webapp Manager Shortcuts

From within the Webapp Manager, you can use the following shortcuts to manage web apps efficiently.

- `CTRL+N` - Add a new web app.
- `CTRL+E` - Edit a Web app's settings.
- `CTRL+D` - Remove a web app.
- `CTRL+K` - Open the Shortcuts window.
- `ENTER` key - Launch the selected web app.
- `ESC` - Go back.
- `F1` - Show About section of Webapp Manager.
- `CTRL+Q` - Exit Webapp manager.

## Problem with Webapp Manager in Ubuntu `24.04 LTS` and `22.04 LTS`

If you're using Ubuntu `24.04`, `22.04` you'll need to install a different web browser instead of the default Firefox browser, which comes as a Snap package.

This is because the WebApp Manager won't be able to detect your browser if it's isolated within a container like Snap. Consequently, you won't be able to run Web apps.

**Solution:**

In order to run web apps using Webapp Manager in Ubuntu `24.04 LTS` and `22.04 LTS`, follow the steps below:

1. **Install a Non-Snap Browser:**

To use Webapp Manager on Ubuntu `24.04 LTS` and `22.04 LTS`, you should install a web browser that isn't packaged as a Snap. This could be a different version of [Firefox](https://www.mozilla.org/en-US/firefox/) (not the Snap version) or another browser like [Google Chrome](https://www.google.com/chrome/), [Brave](https://brave.com/download/), or even an alternative like [Chromium](https://www.chromium.org/) (if it's not a Snap package).

2. **Use Webapp Manager:**

Once the **non-Snap browser** is installed, you should be able to use Webapp Manager without issues. Create web apps as you would normally as shown earlier, using the newly installed browser as the base.

This workaround allows you to continue using Webapp Manager on Ubuntu `24.04 LTS` and `22.04 LTS`, taking advantage of its features to integrate web apps into your desktop environment seamlessly.

## Author

**Tafara Nyamhunga  - [Github](https://github.com/tafara-n) / [Twitter](https://twitter.com/tafaranyamhunga)**
