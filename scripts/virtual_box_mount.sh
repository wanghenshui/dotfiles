#!/usr/bin/bash
read -p "enter the SHARED FOLDER YOU SETTED:": enter_folder

if [[ -ne /mnt/${enter_folder} ]]; then
	mkdir /mnt/${enter_folder}

mount -t vboxsf ${enter_folder} /mnt/${enter_folder}

echo ${enter_folder} " /mnt/$enter_folder vboxsf rw,gid=110,uid=1100,auto 0 0 " >> /etc/fstab