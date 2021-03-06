#!/bin/bash

# Usage:
# Go into cmd loop: sudo ./cleos.sh
# Run single cmd:  sudo ./cleos.sh <cleos paramers>

PREFIX="docker exec docker_nodeos_1 cleos"
if [ -z $1 ] ; then
  while :
  do
    read -e -p "$(echo -e '\033[41;37m cleos >> \033[0m ')" cmd
    history -s "$cmd"
    $PREFIX $cmd
  done
else
  $PREFIX $@
fi
