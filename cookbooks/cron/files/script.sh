#!/bin/bash

# This is a sample Bash script
# It prints a welcome message and current date


sudo echo "Welcome to the script!" >> /var/log/cron.log
sudo echo "Today is $(date)" >> /var/log/cron.log
sudo git -C /opt/chef/  pull origin main
sudo chef-solo -c /opt/chef/solo.rb -j /opt/chef/runlist.json --chef-license=accept > /var/log/chef.log
sudo echo "Done!" >> /var/log/cron.log

                                                                   


