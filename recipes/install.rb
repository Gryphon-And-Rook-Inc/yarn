#
# Cookbook:: yarn
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
execute 'update apt-get' do
  command 'sudo apt update'
end

execute 'upgrade apt-get' do
  command 'sudo apt upgrade'
end

execute 'add yarn repo' do
  command 'curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -'
end

execute 'enable yarn repo' do
  command 'echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list'
end

execute 'update apt-get' do
  command 'sudo apt update'
end

execute 'install yarn' do
  command 'sudo apt -y install yarn'
end
