#
# Cookbook Name:: must-have
# Recipe:: default

package "screen"
package "vim"
package "nmap"
package "mc"
package "curl"
package "sudo"

template "#{ENV['HOME']}/chef-getting-started.txt" do
  source "chef-getting-started.txt.erb"
  mode "0644"
end

