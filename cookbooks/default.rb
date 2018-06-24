apt_update 'daily' do
  frequency 86_400
  action :periodic
end

include_recipe '::web'
include_recipe 'mysql::default'
include_recipe 'nagios::default'
include_recipe 'nagios::base_host_monitors'
include_recipe 'nagios::check_nginx'
include_recipe 'nginx::default'
