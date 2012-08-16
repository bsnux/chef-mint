# Create 'scripts' and populate it with some useful scripts

scripts_dir = node['user']['default']['home_directory'] + 'scripts/'

directory scripts_dir do
  owner node['user']['default']['username']
  group node['user']['default']['username']
  mode '0755'
  action :create
end

template scripts_dir + 'django_tags.sh' do
  source 'django_tags.erb'
  mode '755'
  owner node['user']['default']['username']
  group node['user']['default']['username']
end

template scripts_dir + 'django_completion.sh' do
  source 'django_completion.erb'
  mode '755'
  owner node['user']['default']['username']
  group node['user']['default']['username']
end
