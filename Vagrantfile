Vagrant::Config.run do |config|
# configure vanilla ubuntu box
  config.vm.box = "precise64"

# use/configure chef_ solo as provisioning tool
  config.vm.provision :chef_solo do |chef|

# configure paths for chef databags, cookbooks, etc
  chef.data_bags_path = "databags"
  chef.cookbooks_path = ["cookbooks", "site-cookbooks"]

# tools to be installed on box
  chef.add_recipe "vim"
  chef.add_recipe "git"

# install nagios
  chef.add_recipe "nagios"
    
# setup users (from data_bags/users/*.json)

# chef.log_level = :debug

  end
end
