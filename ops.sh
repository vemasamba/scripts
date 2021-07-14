#!/bin/bash

read -p "enter a number1 :" num1
read -p "enter a number2 :" num2
read -p "enter operator{add/sub/multi/div}" ops

ops=$(echo $ops |tr [:lower:] [:upper:])
case $ops in
	ADD)
		echo "sum = $(($num1+$num2))";;
	SUB)
		echo "subtract = $(($num1-$num2))";;
	MULTI)
		echo "multi = $(($num1*$num2))";;
	DIV)
		echo "divide = $(($num1/$num2))";;
	*)
		echo " invalid operator";;

	


esac


