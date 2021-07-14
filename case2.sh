#!/bin/bash

echo -e "\e[31m monitoring menu \e[0m"

echo "1. check total memory"
echo "2. check free memory"
echo "3. check used memory"
echo "4. check cpu load"
echo "5. check disc usage"
echo "6. exit"

read -p "select a value :" val

case $val in
	1)
		 echo "$(free -h |awk '/^Mem/ {print$2}')" ;;
	2)
		echo "$(free -h |awk '/^Mem/ {print$4}')" ;;
	3)
		echo "$(free -h |awk '/^Mem/ {print$3}')";;
	4)
		echo "$(uptime |awk -F , '{print $3}')";;
	5)
		echo "$(df -h|grep -v Filesystem|awk '/udev/ {print $4}')";;
	6)
		exit ;;

       

esac








