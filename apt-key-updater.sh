#!/bin/bash

# We assume the line after pub contains the fingerprint and the fingerprint is in the last 50 characters of that line.
# Then we remove all spaces. Finally, we have to consider differing grep implementations and filter out double newlines.

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $( apt-key fingerprint | grep -oPz '(?<=pub).*\n.*(\K.{50})\n' | sed 's: ::g' | sed  '/^$/d' )

