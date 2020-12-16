#!/bin/bash
line=$1
if [ ! -z "$line" ]
then
	line=${line//\\//}
	drive=${line:0:1}
	drive=${drive,,}
	line_mf=${line:2:${#line}}
	line_mf=${line_mf//\\//}
	line_mf=${line_mf// /\\ }
	bashPath="/cygdrive/$drive$line_mf"
	wslPath="/mnt/$drive$line_mf"
	echo "For Cygwin: $bashPath"
	#echo "For WSL: $wslPath"
else
	echo "Please enter correct value"
fi