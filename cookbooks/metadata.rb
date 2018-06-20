name 'actioniq'
maintainer 'CF'
maintainer_email 'iamnewsworthy@gmail.com'
description 'Installs/Configures actioniq requirements'
long_description 'Installs/Configures actioniq requirements'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)
supports 'ubuntu'

depends 'nginx', '~> 8.1.2'
depends 'mysql', '~> 8.5'
depends 'database', '~> 6.1'
depends 'mysql2_chef_gem', '~> 2.1'
