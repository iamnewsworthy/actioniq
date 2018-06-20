name 'actioniq'
maintainer 'CF'
maintainer_email 'iamnewsworthy@gmail.com'
description 'Installs/Configures actioniq requirements'
long_description 'Installs/Configures actioniq requirements'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)
supports 'ubuntu'

depends 'httpd', '~> 0.6'
depends 'mysql', '~> 8.5'
