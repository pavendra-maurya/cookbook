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

include_recipe "simple_cb::tree"

gzipped_file = "#{node[:simple_cb][:the_dirname]}/stdrc.tgz"
extract_path = "extracting"

cookbook_file "stdrc.tgz" do
  path gzipped_file
end


bash "untar stdrc" do
  cwd ::File.dirname(gzipped_file)
  code <<-EOH
    mkdir -p #{extract_path}
    tar xzf #{gzipped_file} -C #{extract_path}
  EOH
  not_if { ::File.exists?(extract_path) }
end
#not_if { ::File.exists?("#{node[:simple_cb][:the_dirname]}/#{extract_path}") }
