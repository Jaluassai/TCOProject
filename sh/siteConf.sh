#!/bin/bash

# Getting hostname
hostname=$(hostname)
# Getting IPAddr
ip_address=$(hostname -I | cut -d ' ' -f2)

# Wyszukaj i zastąp zawartość tagu <title>
sed  -i "s/<title>.*<\/title>/<title>$hostname ($ip_address)<\/title>/" /srv/GuessTheNumber/index.html

echo "Updated title of index.html with $hostname"