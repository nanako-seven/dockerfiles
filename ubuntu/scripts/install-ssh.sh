#!/bin/bash
mkdir /run/sshd
apt -yqq install openssh-server > /dev/null
sed -i '$aPermitRootLogin yes' /etc/ssh/sshd_config
service ssh reload