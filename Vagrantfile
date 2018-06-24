Vagrant.configure("2") do |config|
# configure vanilla ubuntu box
  config.vm.box = "precise64"

# use/configure chef_ solo as provisioning tool
  config.vm.provision :chef_solo do |chef|

# configure paths for chef databags, cookbooks, etc
  chef.attributes_path = "attributes"
  chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
  chef.data_bags_path = "databags"
  chef.roles_path = "roles"

# recipes to be installed on the box
  chef.add_recipe "apt"
  chef.add_recipe "logrotate"
  chef.add_recipe "mysql"
  chef.add_recipe "nagios"  
  chef.add_recipe "nginx"
  chef.add_recipe "nrpe"

# roles to be configured on the box
  chef.add_role("monitoring")
  chef.add_role("server_base")  
  chef.add_role("web")

# setup users (from databags/users/*.json)

# chef.log_level = :debug

  end
end
