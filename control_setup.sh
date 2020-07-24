#!/bin/bash
node1=""
node2=""
node3=""

echo "$node1 node1" >> /etc/hosts
echo "$node2 node2" >> /etc/hosts
echo "$node3 node3" >> /etc/hosts
yum install vim bash-completion tree epel-release -y
yum install ansible -y
ssh-keygen -f ~/.ssh/id_rsa -N ''

for i in $node1 $node2 $node3;do ssh-copy-id devops@$i;done

#Test ssh connectivity
ssh devops@$node1 "id"
ssh devops@$node2 "id"
ssh devops@$node3 "id"

bash

