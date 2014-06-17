#
# Cookbook Name:: graphite
# Attributes:: carbon_cache
#

default['graphite']['carbon']['caches']['a']['line_receiver_interface'] =   '0.0.0.0'
default['graphite']['carbon']['caches']['a']['line_receiver_port'] = 2003
default['graphite']['carbon']['caches']['a']['udp_receiver_interface'] = '0.0.0.0'
default['graphite']['carbon']['caches']['a']['udp_receiver_port'] = 2003
default['graphite']['carbon']['caches']['a']['pickle_receiver_interface'] = '0.0.0.0'
default['graphite']['carbon']['caches']['a']['pickle_receiver_port'] = 2004
default['graphite']['carbon']['caches']['a']['cache_query_interface'] =     '0.0.0.0'
default['graphite']['carbon']['caches']['a']['cache_query_port'] = 7002
default['graphite']['carbon']['enable_udp_listener'] = 'False'
default['graphite']['carbon']['use_insecure_unpickler'] = 'False'
default['graphite']['carbon']['use_flow_control'] = 'True'
default['graphite']['carbon']['max_cache_size'] = 'inf'
default['graphite']['carbon']['max_creates_per_minute'] = 'inf'
default['graphite']['carbon']['max_updates_per_second'] = '1000'
default['graphite']['carbon']['log_whisper_updates'] = 'False'
default['graphite']['carbon']['whisper_autoflush'] = 'False'

default['graphite']['storage_schemas'] = [
  {
    'name' => 'catchall',
    'pattern' => '^.*',
    'retentions' => '60:100800,900:63000'
  }
]
default['graphite']['storage_aggregation'] = nil

case node['platform_family']
when 'debian'
  default['graphite']['carbon']['service_type'] = 'runit'
when 'rhel', 'fedora'
  default['graphite']['carbon']['service_type'] = 'init'
end
