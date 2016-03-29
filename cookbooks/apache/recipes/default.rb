#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'httpd' do 

  action :install
end

service 'httpd' do 

  action :restart
end

cookbook_file '/etc/httpd/conf.d/vhost.conf' do
  source 'vhost.conf.erb'
  owner 'apache'
  group 'apache'
  action :create
end