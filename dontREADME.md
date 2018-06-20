#create project in vagrant
vagrant box add precise64 http://files.vagrantup.com/precise64.box

#create directory on local host to store vagrant project
mkdir -p ~/cf_code/actioniq-dv/ & cd ~/cf_code/actioniq-dv/

#create a vagrantfile in the current directory
vagrant init precise64 

#create required directory structure  
mkdir ~/cf_code/actioniq-dv/cookbooks
mkdir ~/cf_code/actioniq-dv/site-cookbooks
mkdir ~/cf_code/actioniq-dv/databags

#download common cookbooks
git clone git://github.com/vim/vim.git
git clone git://github.com/git/git.git

#create users databags directory
mkdir -p ~/cf_code/actioniq-dv/databags/users
