#
# Cookbook:: yarn
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
execute 'update apt-get' do
  command 'sudo apt-get update'
end

execute 'add yarn repo' do
  command 'curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -'
end

execute 'install nodejs' do
  command 'sudo apt-get install -y --force-yes yarn'
end
