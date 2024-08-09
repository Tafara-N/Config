#!/usr/bin/env bash

# Script configures Huawei MateBook D15 to work.

# Activates the speakers as the sound card is not detected
sudo add-apt-repository ppa:kaihengfeng/fix-lp1869819

sudo apt upgrade
