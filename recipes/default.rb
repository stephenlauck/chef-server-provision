#
# Cookbook Name:: chef-server-provision
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'chef-server-provision::vagrant'

# declare a machine to act as our web server
machine 'chef-server' do
  role 'example'
  tag 'chefserver'
  converge true
end