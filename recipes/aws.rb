
require 'chef/provisioning/aws_driver'
with_driver 'aws'


with_machine_options({
  :bootstrap_options => {
    :instance_type => 'm3.medium',
    :security_groups => ['default']
  },
  :ssh_username => 'root',
  :image_id => 'ami-3d50120d'
})