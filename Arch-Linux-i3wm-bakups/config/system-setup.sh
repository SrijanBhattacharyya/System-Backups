#!/bin/bash


if [ "$EUID" -ne 0 ]
  then
  sudo "$0" "$@"
  exit
fi


set System_Config_file=/home/rohit/.config/system-config.json
Update_sddm=/etc/sddm/sddm-setup.py

sudo /usr/bin/python3 $Update_sddm