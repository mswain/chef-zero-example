#
# Cookbook Name:: rando
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
mysql_service 'cool' do
  port '3306'
  version '5.5'
  initial_root_password 'cool'
  action [:create, :start]
end
