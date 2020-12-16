#!/bin/bash
line=$1
if [ ! -z "$line" ]
then
	## Convert Drive Letter to LowerCase
	drive=${line:0:1}
	drive=${drive,,}
	## Replace "\" with "/" and " " with "\ "
	line_mf=${line:2:${#line}}
	line_mf=${line_mf//\\//}
	line_mf=${line_mf// /\\ }
	bashPath="/cygdrive/$drive$line_mf"
	wslPath="/mnt/$drive$line_mf"
	echo "For Cygwin: $bashPath"
	echo "For WSL: $wslPath"
else
	echo "Please enter correct value"
fi