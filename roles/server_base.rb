name 'server_base'
description 'default role for servers'

run_list(
  # this adds NRPE (Nagios Remote Plugin Extension) support for all systems to be monitored
  'recipe[nagios::client]',
  # this installs base NRPE checks (see below)
  'recipe[example::base_monitoring]'
)

default_attributes(
  :nagios => {
    # you only need this if your nagios server uses a role other than 'monitoring'
    :server_role => 'monitoring'
  }
)
