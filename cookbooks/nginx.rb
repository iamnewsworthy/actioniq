#
# Cookbook Name:: nginx
# Recipe:: default
#
#install the software
package 'nginx' do
  action :install
end

#start the service
service 'nginx' do
  action [ :enable, :start ]
end

#to start, serve this file
cookbook_file "/usr/share/nginx/www/index.html" do
  source "index.html"
  mode "0644"
end
