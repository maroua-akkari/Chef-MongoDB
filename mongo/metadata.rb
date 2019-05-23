name 'mongo'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures mongo'
long_description 'Installs/Configures mongo'
version '0.1.0'
chef_version '>= 12.14' if respond_to?(:chef_version)

depends 'apt'
depends 'sc-mongodb', '~> 1.2.0'
