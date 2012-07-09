git_url = 'git@github.com:bsnux/'
dev_dir = '/tmp/'
repos = ['vim-kit', 'django-bootstrap-scripts', 'git-achievements']

repos.each do |repo|
  git 'Clone repo' do
    user 'bsnux'
    group 'bsnux'
    repository git_url + repo
    reference 'master'
    action :checkout
    destination dev_dir + repo
  end
end
