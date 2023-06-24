#
# Cookbook:: s3
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.



remote_file_s3 '/home/ubuntu/app/my-app-19.tar' do
  bucket 'cloudschoolartifacts'
  remote_path 'my-app-19.tar'
  aws_access_key_id 'AKIASF5WYYCAZFLVH755'
  aws_secret_access_key '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'
  region 'eu-west-1'
  action :create
end

execute 'extract_artifact' do
  command 'tar -xf /home/ubuntu/app/my-app-19.tar -C /home/ubuntu/app'
  action :run
end
