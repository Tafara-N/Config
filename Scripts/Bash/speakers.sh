#!/usr/bin/env bash

: '
Script configures Huawei MateBook D15 to work.

Link:
https://askubuntu.com/questions/1230363/internal-speaker-audio-is-not-working-in-ubuntu-20-04-lts-after-upgrading-from
'
# Activates the speakers as the sound card is not detected
sudo add-apt-repository ppa:kaihengfeng/fix-lp1869819
sudo apt upgrade
