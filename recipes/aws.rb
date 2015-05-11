# ~/chef-repo/cookbooks/web/recipes/servers.rb
require 'chef/provisioning/aws_driver'
with_driver 'aws'

# specify what's needed to create a machine
with_machine_options({
  :bootstrap_options => {
    :instance_type => 'm3.medium',
    :security_groups => ['default']
  },
  :ssh_username => 'root',
  :image_id => 'ami-3d50120d'
})