#!/usr/bin/bash

# Cron job to update the system every day at 5 a.m, 12 pm, 6 pm and 10 pm

# 0 5,12,18,22 * * * /home/user/Documents/Code/Scripts/Bash/Cronjobs/update.sh

# Update the system
sudo apt update ; sudo apt upgrade -y
sudo apt autoremove ; sudo apt autoclean -y
