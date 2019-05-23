#
# Cookbook:: mongo
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
include_recipe 'apt'
include_recipe "sc-mongodb::default"

service "sc-mongodb" do
  action [:enable, :start]
end
