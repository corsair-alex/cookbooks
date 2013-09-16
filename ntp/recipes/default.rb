package "ntp" do
  action :install
end

service "ntp" do
  supports :restart => true
  action :nothing
end

template "/etc/ntp.conf" do
  source node[:ntp][:template_name]
  owner "root"
  group "root"
  mode "0644"

  notifies :restart, resources(:service => 'ntp'), :immediately
end
