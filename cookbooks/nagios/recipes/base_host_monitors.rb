# test the current system load average
nagios_nrpecheck "check_load" do
  command "#{node['nagios']['plugin_dir']}/check_load"
  warning_condition "8"
  critical_condition "9"
  action :add
end
