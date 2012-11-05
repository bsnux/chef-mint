template node['user']['default']['home_directory'] + '.gitconfig' do
  source 'gitconfig.erb'
  mode '644'
  owner node['user']['default']['username']
  group node['user']['default']['username']
end
