#
# Cookbook:: cron
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.

cron 'runinng_main' do
  minute '*/3'
  mode '0755'
  owner 'root'
  #user 'root'
  #command 'bash /home/ubuntu/chef/cookbooks/cron/files/script.sh'
  #command 'bash -c /home/ubuntu/chef/cookbooks/cron/files/script.sh'
  command 'bash -c /opt/chef/cookbooks/cron/files/script.sh'
  action :create
end
