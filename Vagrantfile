Vagrant::Config.run do |config|
# configure vanilla ubuntu box
  config.vm.box = "precise64"

# use/configure chef_ solo as provisioning tool
  config.vm.provision :chef_solo do |chef|

# configure paths for chef databags, cookbooks, etc
  chef.data_bags_path = "databags"
  chef.data_bags_path = "attributes"
  chef.cookbooks_path = ["cookbooks", "site-cookbooks"]

# tools to be installed on box
  chef.add_recipe "nginx"
  chef.add_recipe "mysql"
    
# setup users (from databags/users/*.json)

# chef.log_level = :debug

  end
end
