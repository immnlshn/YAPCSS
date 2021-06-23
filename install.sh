#!/bin/bash
RESET="\e[0m"
BOLD="\e[1m"
DIM="\e[2m"
ITALIC="\e[3m"
UNDERLINED="\e[4m"
BLINK="\e[5m"
INVERTED="\e[7m"
CROSSED="\e[9m"

BLACK="\e[30m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
LIGHT_GRAY="\e[37m"

DARK_GRAY="\e[90m"
LIGHT_RED="\e[91m"
LIGHT_GREEN="\e[92m"
LIGHT_YELLOW="\e[93m"
LIGHT_BLUE="\e[94m"
LIGHT_MAGENTA="\e[95m"
LIGHT_CYAN="\e[96m"
WHITE="\e[97m"

function checkIfRoot() {
    if [ "$EUID" -ne 0 ]
        then 
            echo -e "$BOLD$RED You must be$RESET root$BOLD$RED to run this script.$RESET"
            echo -e "$BLUE Aborting!$RESET"
        exit
    fi
}

function createLog(){
    echo -e "$CYAN Creating logfile...\n$LIGHT_GREEN$PWD/apcss.log"
    touch apcss.log

}

function update(){
    echo -e ""
    {
        apt update && apt dist-upgrade -y
    } &> yapcss.log
}


clear
echo -e "\n$BLUE Welcome to my Script.$RESET\n\n"
# sleep 5
checkIfRoot
createLog
# update
