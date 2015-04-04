#!/bin/bash

## Run this script on client machine
mkdir -p ~/.ssh
sudo chmod 700 ~/.ssh
ssh-keygen -q -f ~/.ssh/id_rsa -t rsa
# do not enter a passphrase

# transfer id_rsa.pub to server's home

# Setup the public key on server
mkdir -p ~/.ssh
sudo chmod 700 ~/.ssh
cat id_rsa.pub >> ~/.ssh/authorized_keys
sudo chmod 600 ~/.ssh/authorized_keys
rm id_rsa.pub

