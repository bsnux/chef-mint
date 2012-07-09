python_packages = ['virtualenvwrapper', 'ipdb', 'ipython']

python_packages.each do |python_package|
  execute 'install python packages' do
    command 'pip install ' + python_package
    action :run
  end
end
