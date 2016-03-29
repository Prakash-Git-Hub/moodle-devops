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
  cd /var/www/html
  wget https://download.moodle.org/stable30/moodle-3.0.tgz
  tar -xvf moodle-3.0.tgz
  sudo chown -R apache:apache /var/www/html/moodle
  sudo chmod -R 755 /var/www/html/moodle

    
    EOH
  not_if { ::File.exists?('/var/www/html/moodle') }
end

  