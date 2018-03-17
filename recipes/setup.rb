#
# Cookbook Name:: workstation
# Recipe:: setup
#
# Copyright (c) 2018 The Authors, All Rights 
# Reserved. ~/setup.rb
package 'tree' do
	action :install
end
package 'ntp'

file '/etc/motd' do
	content 'This server is the property of ...'
	action :create
	owner 'root'
	group 'root'
end
package 'git' do
	action	:install
end
