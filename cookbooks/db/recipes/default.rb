#
# Cookbook Name:: db
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


mysql_service 'default' do
  bind_address '0.0.0.0'
  port '3306'
  data_dir '/data'
  #initial_root_password 'rootpassword'
  action [:create, :start]
end