Vagrant::Config.run do |config|
  config.vm.box = "precise64"

  config.vm.provision :chef_solo do |chef|

    # contains "users" and "ssh_known_hosts" databags
    chef.data_bags_path = "databags"

    chef.cookbooks_path = ["cookbooks", "site-cookbooks"]

    # stuff that should be in base box
    chef.add_recipe "vim"
    chef.add_recipe "git"
    
    # setup users (from data_bags/users/*.json)
    chef.add_recipe "users::ruby_shadow" # necessary for password shadow support
    chef.add_recipe "users::sysadmins" # creates users and sysadmin group
    chef.add_recipe "users::sysadmin_sudo" # adds %sysadmin group to sudoers

       # chef.log_level = :debug

  end
end
