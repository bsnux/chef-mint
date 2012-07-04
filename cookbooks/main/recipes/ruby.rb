# Ruby stack

the_owner = 'bsnux'
the_group = 'bsnux'
ruby_version = '1.9.3'

package 'curl'

execute 'install_rvm' do
  command 'curl -L https://get.rvm.io | bash -s stable --ruby'
  user the_owner
  group the_owner
  action :run
end

execute 'install_rvm_ruby' do
  command 'rvm install ' + ruby_version
  user the_owner
  group the_owner
  action :run
end
