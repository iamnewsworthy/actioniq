# Load MySQL passwords from the 'passwords' data bag.
passwords = data_bag_item('passwords', 'mysql')

# Configure the MySQL client.
mysql_client 'default' do
  action :create
end

# Configure the MySQL service.
mysql_service 'default' do
  initial_root_password passwords['root_password']
  action [:create, :start]
end

# Create a prod database
mysql_database 'prod' do
  connection(
    :host     => '127.0.0.1',
    :username => 'root',
    :password => node['prod']['mysql']['initial_root_password']
  )
  action :create
end

# Create a staging database
mysql_database 'staging' do
  connection(
    :host     => '127.0.0.1',
    :username => 'root',
    :password => node['staging']['mysql']['initial_root_password']
  )
  action :create
end

# Create a dev database
mysql_database 'dev' do
  connection(
    :host     => '127.0.0.1',
    :username => 'root',
    :password => node['dev']['mysql']['initial_root_password']
  )
  action :create
end

# create prod user
mysql_database_user 'prod_god' do
  connection mysql_connection_info
  password data_bag_item['admin_password']  
  privileges [:all]
  action [:create, :grant]
end

# create bob dev user
mysql_database_user 'bob_dev' do
  connection mysql_connection_info
  password data_bag_item['bob_dev']  
  privileges [:all]
  action [:create, :grant]
end

# create joe dev user
mysql_database_user 'joe_dev' do
  connection mysql_connection_info
  password data_bag_item['joe_dev']  
  privileges [:all]
  action [:create, :grant]
end
