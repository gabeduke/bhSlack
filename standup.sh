#!/usr/bin/env bash

times=( $(/usr/local/bin/gcalcli search 'DUQs Stand-up' '8am' '6pm' --calendar 'gduke@bullhorn.com' | grep -o '[0-9]\?[0-9]:[0-9][0-9][a,p][m]') )

echo ${times[*]}

for time in ${times[*]}
do
	(at $time < /home/gabeduke/command.sh)
done
