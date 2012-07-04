# Create 'scripts' and populate it with some useful scripts

scripts_dir = '/tmp/scripts/'

directory scripts_dir do
  owner 'arturo'
  group 'arturo'
  mode '0755'
  action :create
end

template scripts_dir + 'django_tags.sh' do
  source 'django_tags.erb'
  mode '755'
  owner 'arturo'
  group 'arturo'
end

template scripts_dir + 'django_completion.sh' do
  source 'django_completion.erb'
  mode '755'
  owner 'arturo'
  group 'arturo'
end
