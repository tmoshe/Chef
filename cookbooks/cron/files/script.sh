#!/bin/bash

# This is a sample Bash script
# It prints a welcome message and current date

sudo su
echo "Welcome to the script!" >> /home/ubuntu/file2.txt
echo "Today is $(date)" >> /home/ubuntu/file2.txt
cd /home/ubuntu/chef
#git remote add origin https://github.com/tmoshe/chef.git
git pull origin main
#git clone https://github.com/tmoshe/chef.git
chef-solo -c /home/ubuntu/chef/solo.rb -j /home/ubuntu/chef/runlist.json --chef-license=accept >> /home/ubuntu/chef.txt
echo "Done!" >> /home/ubuntu/file2.txt

                                                                   


