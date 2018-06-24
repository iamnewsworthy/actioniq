name 'monitoring'
description 'nagios monitoring server'

run_list(
  'recipe[nagios::server]'
)

default_attributes({
  :nagios => {
    :server => {
      ### START Install Verison and Method
      :install_method => "package",
      ### END Install Version and Method
      :service_name => "nagios3",
      :home => "/usr/lib/nagios3",
      :conf_dir => "/etc/nagios3",
      :config_dir => "/etc/nagios3/conf.d",
      :cache_dir => "/var/cache/nagios3",
      :state_dir => "/var/lib/nagios3",
      :run_dir => "/var/run/nagios3",
      :docroot => "/usr/share/nagios3/htdocs",
      :server_name => "nagios",
      :web_server => "nginx"
    },
    :client => {
      :install_method => "package"
    },
    :server_auth_method => "htauth",
    :url => "nagios.actioniq.com"
  }
})
EOF
