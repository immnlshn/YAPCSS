#!/bin/bash
BOLD="\e[1m"
RED="\e[31m"
BLUE="\e[34m"
CYAN="\e[36m"
LIGHT_RED="\e[91m"

clear
echo -e "$BLUE Welcome to my Script."
if [ "$EUID" -ne 0 ]
    then 
        echo -e "$BOLD$RED PLEASE RUN AS ROOT!"
    exit
else echo -e "$LIGHT_RED DU BIST COOL UND HAST RECHTE"
fi

