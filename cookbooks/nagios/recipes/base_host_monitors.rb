# test the current system load average
nagios_nrpecheck "check_load" do
  command "#{node['nagios']['plugin_dir']}/check_load"
  warning_condition "6"
  critical_condition "10"
  action :add
end

# Check all non-NFS/tmp-fs disks.
nagios_nrpecheck "check_all_disks" do
  command "#{node['nagios']['plugin_dir']}/check_disk"
  warning_condition "8%"
  critical_condition "5%"
  parameters "-A -x /dev/shm -X nfs -i /boot"
  action :add
end

# test the current system load average
nagios_nrpecheck "check_mem" do
  command "#{node['nagios']['plugin_dir']}/check_mem"
  warning_condition "20"
  critical_condition "10"
  action :add
end
