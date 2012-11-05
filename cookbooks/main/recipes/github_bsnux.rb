git_url = 'git@github.com:bsnux/'
dev_dir = node['user']['default']['home_directory'] + 'dev/'
repos = ['vim-kit', 'django-bootstrap-scripts', 'git-achievements']

execute 'copy SSH public key' do
  command 'cp ' + node['user']['default']['home_directory'] + '.ssh/id_rsa.pub /root/.ssh/'
  action :run
end

execute 'copy SSH private key' do
  command 'cp ' + node['user']['default']['home_directory'] + '.ssh/id_rsa /root/.ssh/'
  action :run
end

repos.each do |repo|
  git 'Clone repo' do
    user node['user']['default']['username']
    group node['user']['default']['username']
    repository git_url + repo
    action :checkout
    destination dev_dir + repo
  end
end
