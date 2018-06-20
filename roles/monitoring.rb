name 'monitoring'
description 'nagios monitoring server'

run_list(
  'recipe[nagios::server]'
)

default_attributes(
  :nagios => {
    :server_auth_method => 'htauth',
    :url => 'nagios.tools.example.com'
  }
)
