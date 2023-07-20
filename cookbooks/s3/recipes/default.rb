#
# Cookbook:: s3
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.

#ruby_block 'delete_tar_files' do
#  block do
#    Dir.glob('/home/ubuntu/app/*.tar').each do |file|
#      File.delete(file)
#    end
#  end
#  action :run
#  only_if { Dir.exist?('/home/ubuntu/app') } # Optional: Check if the directory exists
#end

#directory '/opt/app' do
#directory '/home/ubuntu/app' do
directory '/opt/app' do
  owner 'root'
  group 'root'
  mode '0777'
  action :create
end

version = node["s3"]["ver"]


#remote_file_s3 "/home/ubuntu/app/my-app-#{version}.tar" do
remote_file_s3 "/opt/app/my-app-#{version}.tar" do
  bucket 'bucketcloudschool'
  remote_path "my-app-#{version}.tar"
  file_cache_path "/tmp/s3-cache-status"
  region 'eu-west-1'
  action :create
end

execute 'extract_artifact' do
 # command "tar -xf /home/ubuntu/app/my-app-#{version}.tar -C /home/ubuntu/app"
  command "tar -xf /opt/app/my-app-#{version}.tar -C /opt/app/"
  action :run
end



#directory '/home/ubuntu/app' do
#  owner 'root'
#  group 'root'
#  mode '0777'
#  action :create
#end

#version = node["s3"]["ver"]


#remote_file_s3 "/home/ubuntu/app/my-app-#{version}.tar" do 
#  bucket 'cloudschoolartifacts'
#  remote_path "my-app-#{version}.tar"
#  aws_access_key_id 'AKIASF5WYYCAZFLVH755'
#  aws_secret_access_key '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'
#  region 'eu-west-1'
#  action :create
#end

#execute 'extract_artifact' do
#  command "tar -xf /home/ubuntu/app/my-app-#{version}.tar -C /home/ubuntu/app"
#  action :run
#end

#remote_file_s3 '/home/ubuntu/app/my-app-19.tar' do
#  bucket 'cloudschoolartifacts'
#  remote_path 'my-app-19.tar'
#  aws_access_key_id 'AKIASF5WYYCAZFLVH755'
#  aws_secret_access_key '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'
#  region 'eu-west-1'
#  action :create
#end

#execute 'extract_artifact' do
#  command 'tar -xf /home/ubuntu/app/my-app-19.tar -C /home/ubuntu/app'
#  action :run
#end
