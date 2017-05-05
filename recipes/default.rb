template '/home/vagrant/.gitignore' do
  source 'gitignore'
  owner 'vagrant'
  group 'vagrant'
  mode '0777'
end

template '/home/vagrant/.gitconfig' do
  source 'gitconfig.erb'
  owner 'vagrant'
  group 'vagrant'
  mode '0777'
end

template '/home/vagrant/.zshrc' do
  source 'zshrc'
  owner 'vagrant'
  group 'vagrant'
  mode '0777'
end

template '/home/vagrant/.aliases' do
  source 'aliases'
  owner 'vagrant'
  group 'vagrant'
  mode '0777'
end

template '/home/vagrant/.tmux.conf' do
  source 'tmux.conf'
  owner 'vagrant'
  group 'vagrant'
  mode '0777'
end

remote_directory '/home/vagrant/.tmux/' do
  source 'tmux'
  owner 'vagrant'
  group 'vagrant'
  mode '0755'
end

bash "edit locale.gen" do
  code "sudo locale-gen de_DE.UTF-8"
end

