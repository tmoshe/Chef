#
# Cookbook:: app
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.

directory '/home/ubuntu/app' do
  owner 'root'
  group 'root'
  mode '0777'
  action :create
end

execute "run-flask-apk"  do
       command 'nohup python3 app.py > /dev/null 2>&1 &'
       cwd '/home/ubuntu/app/'
       user 'root'
       action :run
#test moshe12323232344
end


