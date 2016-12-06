#
# Cookbook Name:: rando
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
package 'nodejs'
package 'ruby-dev'
package 'ruby-bundler'
package 'redis-server'

mysql_client 'default' do
    action :create
end

mysql_service 'cool' do
  port '3306'
  initial_root_password 'cool'
  action [:create, :start]
end
