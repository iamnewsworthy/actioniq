nagios_nrpecheck "check_nginx" do
  # make sure to install the check_nginx plugin
  command "#{node['nagios']['plugin_dir']}/check_nginx"
  # adjust parameters as needed
  parameters '--url localhost:8090 --path /nginx_status'
  action :add
end
