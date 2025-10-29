#!/bin/sh

dir=/sys/class/power_supply/BAT0

read -r lvl < "$dir/capacity"
read -r sts < "$dir/status"

printf '%s%% [%s]\n' $lvl $sts
