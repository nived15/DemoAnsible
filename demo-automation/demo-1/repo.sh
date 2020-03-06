#!/bin/bash

ansible all -a "yum clean all" -b

ansible all -m yum_repository -a "name=base-os description='test repo' file=nived-repo baseurl='http://content.example.com/rhel8.0/x86_64/dvd/BaseOS' gpgcheck=no enabled=true" -b

ansible all -m yum_repository -a "name=appstream description='test repo 2' file=nived-repo baseurl='http://content.example.com/rhel8.0/x86_64/dvd/AppStream' gpgcheck=no enabled=true" -b 

# ansible all -m rpm_key -a "key=http://path/to/key state=present" -b
# ansible all -m rpm_key -a "key=http://path/to/key state=present" -b


ansible all -a "yum repolist"
