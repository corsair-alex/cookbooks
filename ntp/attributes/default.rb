default[:ntp][:template_name] = "ntp.conf.erb"

default[:ntp][:restrict] = [] # set in role
default[:ntp][:servers] = [] # set in role or use default
