directory node['user']['default']['home_directory'] + '.config/terminator/' do
  mode '0755'
  owner node['user']['default']['username']
  group node['user']['default']['username']
  recursive true
end

template node['user']['default']['home_directory'] + '.config/terminator/config' do
  source 'terminator.erb'
  mode '644'
  owner node['user']['default']['username']
  group node['user']['default']['username']
end
