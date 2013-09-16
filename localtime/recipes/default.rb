log ("[localtime::default] - Converge localtime. zoneinfo: #{node[:localtime][:zoneinfo_file]}. timezone: #{node[:localtime][:timezone]}") { level :warn }

template "/etc/timezone" do
  source "etc_timezone.erb"
end

execute "locatime" do
  command "cp -f #{node[:localtime][:zoneinfo_file]} /etc/localtime"
end
