# Create 'scripts' and populate it with some useful scripts

scripts_dir = '/home/bsnux/scripts/'

directory scripts_dir do
  owner 'bsnux'
  group 'bsnux'
  mode '0755'
  action :create
end

template scripts_dir + 'django_tags.sh' do
  source 'django_tags.erb'
  mode '755'
  owner 'bsnux'
  group 'bsnux'
end

template scripts_dir + 'django_completion.sh' do
  source 'django_completion.erb'
  mode '755'
  owner 'bsnux'
  group 'bsnux'
end
