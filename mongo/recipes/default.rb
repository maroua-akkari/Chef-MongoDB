
include_recipe 'apt'
include_recipe "sc-mongodb::default"

service "sc-mongodb" do
  action [:enable, :start]
end
