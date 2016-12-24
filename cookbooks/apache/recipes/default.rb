#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2016, Davide Molin, All Rights Reserved.

# let's query the local node to see which OS we're installing onto
if node['platform_family'] == 'rhel'
	package = 'httpd'
else
	package = 'apache2'
end

package 'apache2' do
	package_name package
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end
