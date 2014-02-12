#
# Cookbook Name:: simple_cb
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
myuser = node[:simple_cb][:the_owner]   

directory node[:simple_cb][:the_dirname] do
  owner 	myuser
  group 	myuser
  mode   	node[:simple_cb][:the_perms]
  action 	:create
end

