#!/usr/bin/bash

# This script is used to free up memory in Linux systems.
free -h && sudo sysctl -w vm.drop_caches=3 && sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches && free -h
