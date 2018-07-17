#!/bin/bash

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $( apt-key finger| grep fingerprint | awk '{for(i=4;i<=NF;i++){printf "%s", $i} printf " "}' )

