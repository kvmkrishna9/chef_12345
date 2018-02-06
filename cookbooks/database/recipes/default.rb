#
# Cookbook:: database
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
package 'postgresql' do
	notifies :run ,'execute[command]'
end

execute 'commmand' do
	command:'postgresql-setup initdb'
	action :nothing
end

service 'postgresql' do
	action [:enable, :restart]
end
