#
# Cookbook:: cron
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.

cron 'runinng_main' do
  minute '*/1'
  user 'root'
  command 'bash /home/ubuntu/chef/cookbooks/cron/files/script.sh'
  action :create
end
