#!/bin/bash
useradd devops -G wheel
for i in root devops;do 
  echo "redhat" | passwd --stdin $i
done

sed -ie s/'PasswordAuthentication no'/'PasswordAuthentication yes'/g /etc/ssh/sshd_config
echo "devops	ALL=(ALL)	NOPASSWD: ALL" > /etc/sudoers.d/devops

systemctl restart sshd

