#
# Cookbook:: pyhton
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.


apt_package "python3" do
        action :install
end

apt_package "python3-pip" do
        action :install
end

apt_package "python3-requests" do
        action :install
end

apt_package "python3-flask" do
        action :install
end
