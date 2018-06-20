#
# Cookbook Name:: nagios
# Recipe:: default
#
#install the software
package 'nagios' do
  action :install
end

#start the service
service 'nagios' do
  action [ :enable, :start ]
end
