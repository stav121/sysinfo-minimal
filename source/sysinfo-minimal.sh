#/usr/bin/env bash

# Author : Unix121
# GitHub : github.com/unix121
# E-mail : unix121@protonmail.com
# Description : Simple bash script that displays some 
#               system information using the terminal
#               colors. Designed to be minimalistic and
#               easy to configure/change.

printf -v color0 %b "\e[30m"
printf -v color1 %b "\e[31m"
printf -v color2 %b "\e[32m"
printf -v color3 %b "\e[33m"
printf -v color4 %b "\e[34m"
printf -v color5 %b "\e[35m"
printf -v color6 %b "\e[36m"

bold=$(tput bold)
normal=$(tput sgr0)

user=$(whoami)
linux=$(lsb_release -is)
kernel=$(uname -r)
bash=$BASH_VERSION
wm=$GDMSESSION
term=$TERM

echo
echo $color1 ████████████████ ${bold}User:${normal}  $user 
echo $color2 ████████████████ ${bold}OS:${normal} $linux
echo $color3 ████████████████ ${bold}Kernel:${normal} $kernel
echo $color4 ████████████████ ${bold}Shell:${normal} $BASH_VERSION
echo $color5 ████████████████ ${bold}WM:${normal} $wm
echo $color6 ████████████████ ${bold}Terminal:${normal} $term
echo

