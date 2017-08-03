#!/bin/bash

apt-key adv --keyserver pgp.mit.edu --recv-keys $( apt-key finger| grep fingerprint | awk '{for(i=4;i<=NF;i++){printf "%s", $i} printf " "}' )

