#
# Cookbook Name:: steam-ds
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'user'

user_account "steam-ds"

package "ia32-libs" do
  action :install
end

remote_file "/home/steam-ds/hldsupdatetool.bin" do
  source "http://storefront.steampowered.com/download/hldsupdatetool.bin"
  # This file hasn't changed since 2005
  action :create_if_missing
  owner "steam-ds"
  group "steam-ds"
  mode "755"
end
