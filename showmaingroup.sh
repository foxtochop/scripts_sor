#!/bin/bash
user=$1
idgroup=$(cat /etc/passwd | grep -P "$user" | cut -d ":" -f3)
group=$(cat /etc/group | grep -P "$idgroup" | cut -d ":" -f1)
echo El grupo principal del usuario $user es $group
