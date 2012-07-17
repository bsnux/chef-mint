git_url = 'git@github.com:bsnux/'
dev_dir = '/home/bsnux/dev/'
repos = ['vim-kit', 'django-bootstrap-scripts', 'git-achievements']

execute 'copy SSH public key' do
  command 'cp /home/bsnux/.ssh/id_rsa.pub /root/.ssh/'
  action :run
end

execute 'copy SSH private key' do
  command 'cp /home/bsnux/.ssh/id_rsa /root/.ssh/'
  action :run
end

repos.each do |repo|
  git 'Clone repo' do
    user 'bsnux'
    group 'bsnux'
    repository git_url + repo
    action :checkout
    destination dev_dir + repo
  end
end

execute 'set-up git achievements' do
  command 'git config --global achievement.upload "true"'
  action :run
end
