#
# Cookbook:: s3
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.

ruby_block 'delete_tar_files' do
  block do
    Dir.glob('/home/ubuntu/app/*.tar').each do |file|
      File.delete(file)
    end
  end
  action :run
  only_if { Dir.exist?('/home/ubuntu/app') } # Optional: Check if the directory exists
end

#node.default["s3"]["version"] = "18"
version = node["s3"]["ver"]


remote_file_s3 "/home/ubuntu/app/my-app-#{version}.tar" do 
  bucket 'cloudschoolartifacts'
  remote_path "my-app-#{version}.tar"
  aws_access_key_id 'AKIASF5WYYCAZFLVH755'
  aws_secret_access_key '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'
  region 'eu-west-1'
  action :create
end

execute 'extract_artifact' do
  command "tar -xf /home/ubuntu/app/my-app-#{version}.tar -C /home/ubuntu/app"
  action :run
end

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
