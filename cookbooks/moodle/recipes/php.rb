#
# Cookbook Name:: moodle
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash 'extract_module' do
  code <<-EOH
  mkdir /tmp/new
  rpm -Uvh http://mirror.webtatic.com/yum/el6/latest.rpm
    
    EOH
  not_if { ::File.exists?('/tmp/new') }
end


package ['php56w','php56w-mysql','php56w-common','php56w-pdo','php56w-pdo'] do
  action :install
end 