log4j_appender_path    = "#{node.elasticsearch[:dir]}/elasticsearch/lib/log4j-flume-appender.jar"
common_appender_path   = "#{node.elasticsearch[:dir]}/elasticsearch/lib/common-flume-appender.jar"
flume_sdk_path         = "#{node.elasticsearch[:dir]}/elasticsearch/lib/flume-sdk.jar"
avro_path              = "#{node.elasticsearch[:dir]}/elasticsearch/lib/avro.jar"
avro_ipc_path          = "#{node.elasticsearch[:dir]}/elasticsearch/lib/avro-ipc.jar"
slf4j_api_path         = "#{node.elasticsearch[:dir]}/elasticsearch/lib/slf4j_api.jar"
slf4j_log4j_path       = "#{node.elasticsearch[:dir]}/elasticsearch/lib/slf4j-log4j12.jar"
commons_lang_path      = "#{node.elasticsearch[:dir]}/elasticsearch/lib/commons-lang.jar"
netty_path             = "#{node.elasticsearch[:dir]}/elasticsearch/lib/netty.jar"

def download_dependency path, url

  remote_file path do
    source url
    owner node.elasticsearch[:user]
    group node.elasticsearch[:user]
    action :create
  end

end

download_dependency(log4j_appender_path, node[:flume][:logging][:flume_appender_log4j][:url])
download_dependency(common_appender_path, node[:flume][:logging][:flume_appender_common][:url])
download_dependency(flume_sdk_path, node[:flume][:logging][:flume_sdk][:url])
download_dependency(avro_path, node[:flume][:logging][:avro][:url])
download_dependency(avro_ipc_path, node[:flume][:logging][:avro_ipc][:url])
download_dependency(slf4j_api_path, node[:flume][:logging][:slf4j_api][:url])
download_dependency(slf4j_log4j_path, node[:flume][:logging][:slf4j_log4j][:url])
download_dependency(commons_lang_path, node[:flume][:logging][:commons_lang][:url])
download_dependency(netty_path, node[:flume][:logging][:netty][:url])
