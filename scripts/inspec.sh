#!/bin/bash
sudo yum install https://packages.chef.io/files/stable/inspec/2.2.78/el/7/inspec-2.2.78-1.el7.x86_64.rpm -y
cd /tmp/test
inspec detect
sudo inspec exec *_spec.rb
