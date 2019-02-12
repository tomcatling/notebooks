#!/usr/bin/env bash
set -e

$(aws ecr get-login --no-include-email --region eu-west-2)

#Check if it's a windows terminal
SYS_INFO=$(uname -s)
WIN_INFO=${SYS_INFO:0:5}

if [ "${WIN_INFO}" == "MINGW" ]; then
   winpty docker pull 631013143897.dkr.ecr.eu-west-2.amazonaws.com/redspot
else
   docker pull 631013143897.dkr.ecr.eu-west-2.amazonaws.com/redspot
fi


