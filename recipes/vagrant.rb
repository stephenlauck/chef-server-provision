require 'chef/provisioning/vagrant_driver'

with_driver 'vagrant'

with_chef_server Chef::Config[:chef_server_url].sub('chefzero', 'http')

with_machine_options :vagrant_options => {
  'vm.box' => 'opscode-centos-6.6'
}