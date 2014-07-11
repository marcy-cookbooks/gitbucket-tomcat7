#
# Cookbook Name:: gitbucket-tomcat7
# Recipe:: default
#
# Copyright 2014, Masashi Terui
#
# Apache 2.0 License
#

package "tomcat7" do
  action :install
end

directory "/usr/local/src/gitbucket" do
  action :create
end

service "tomcat7" do
  supports :status => true, :restart => true
  action [ :enable, :start ]
end

execute "copy-to-webapps" do
  command "cp /usr/local/src/gitbucket/gitbucket.#{node['gitbucket-tomcat7']['version']}.war /usr/share/tomcat7/webapps/"
  action :nothing
  notifies :restart, "service[tomcat7]"
end

remote_file "/usr/local/src/gitbucket/gitbucket.#{node['gitbucket-tomcat7']['version']}.war" do
  source "https://github.com/takezoe/gitbucket/releases/download/#{node['gitbucket-tomcat7']['version']}/gitbucket.war"
  action :create_if_missing
  notifies :run, "execute[copy-to-webapps]"
end
