default['grafana']['install_type'] = "git" # git | file
default['grafana']['git']['url'] = "https://github.com/torkelo/grafana"
default['grafana']['git']['branch'] = "master"
default['grafana']['git']['type'] = "sync" # checkout | sync
default['grafana']['file']['type'] = "zip" # zip
default['grafana']['file']['url'] = "https://github.com/torkelo/grafana/releases/download/v1.5.1/grafana-1.5.1.zip"
default['grafana']['file']['checksum'] = "0497f22cf4d3be819997f527a4ec55897c1941ebb035bf943e1b98a4dc6fec27" # sha256 ( shasum -a 256 FILENAME )
default['grafana']['webserver'] = "nginx"
case node['grafana']['install_type']
when 'git'
  default['grafana']['web_dir'] = "#{node['grafana']['install_dir']}/current/src"
when 'file'
  default['grafana']['web_dir'] = node['grafana']['install_dir']
end
default['grafana']['install_path'] = "/opt"
default['grafana']['install_dir'] = "#{node['grafana']['install_path']}/grafana"
default['grafana']['es_server'] = "127.0.0.1"
default['grafana']['es_port'] = "9200"
default['grafana']['es_role'] = "elasticsearch_server"
default['grafana']['es_scheme'] = "http://"
default['grafana']['es_user'] = ''
default['grafana']['es_password'] = ''
default['grafana']['graphite_server'] = "127.0.0.1"
default['grafana']['graphite_port'] = "80"
default['grafana']['graphite_role'] = "graphite_server"
default['grafana']['graphite_scheme'] = "http://"
default['grafana']['graphite_user'] = ''
default['grafana']['graphite_password'] = ''
default['grafana']['user'] = ''
default['grafana']['config_template'] = 'config.js.erb'
default['grafana']['config_cookbook'] = 'grafana'
default['grafana']['webserver_hostname'] = node.name
default['grafana']['webserver_aliases'] = [node.ipaddress]
default['grafana']['webserver_listen'] = node.ipaddress
default['grafana']['webserver_port'] = 80
default['grafana']['webserver_scheme'] = "http://"
default['grafana']['timezone_offset'] = "null" # Example: "-0500" (for UTC - 5 hours)