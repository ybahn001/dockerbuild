#!/bin/bash

#useradd  $USER
#echo -e "$PASSWD\n$PASSWD" | (passwd --stdin $USER)
#echo  $USER password: $PASSWD
#/bin/bash

apt update -y
apt install -y nginx
apt install -y curl

# yum update -y
# yum install -y curl
