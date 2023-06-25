#!/bin/bash

# This is a sample Bash script
# It prints a welcome message and current date

sudo su
echo "Welcome to the script!" >> /home/ubuntu/file2.txt
echo "Today is $(date)" >> /home/ubuntu/file2.txt
cd /home/ubuntu
git clone https://github.com/tmoshe/chef.git
chef-solo -c /home/ubuntu/chef/solo.rb -j /home/ubuntu/chef/runlist.json --chef-license=accept

                                                                   


