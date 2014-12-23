def maven_repo group, artifact, version
  "http://central.maven.org/maven2/#{group.gsub(".","/")}/#{artifact}/#{version}/#{artifact}-#{version}.jar"
end

default.flume[:logging][:flume_appender_common][:version]     = "0.1.7"
default.flume[:logging][:flume_appender_common][:url]         = "http://jcenter.bintray.com/com/gilt/flume/logging-flume-commons/#{node.flume[:logging][:flume_appender_common][:version]}/logging-flume-commons-#{node.flume[:logging][:flume_appender_common][:version]}.jar"

default.flume[:logging][:flume_appender_log4j][:version]      = "0.1.7"
default.flume[:logging][:flume_appender_log4j][:url]          = "http://jcenter.bintray.com/com/gilt/flume/log4j-flume-appender/#{node.flume[:logging][:flume_appender_log4j][:version]}/log4j-flume-appender-#{node.flume[:logging][:flume_appender_log4j][:version]}.jar"

default.flume[:logging][:flume_sdk][:version]                 = "1.5.2"
default.flume[:logging][:flume_sdk][:url]                     = maven_repo("org.apache.flume", "flume-ng-sdk", node.flume[:logging][:flume_sdk][:version])

default.flume[:logging][:avro][:version]                      = "1.7.3"
default.flume[:logging][:avro][:url]                          = maven_repo("org.apache.avro", "avro", node.flume[:logging][:avro][:version])

default.flume[:logging][:avro_ipc][:version]                  = "1.7.3"
default.flume[:logging][:avro_ipc][:url]                      = maven_repo("org.apache.avro", "avro-ipc", node.flume[:logging][:avro_ipc][:version])

default.flume[:logging][:slf4j_api][:version]                 = "1.6.1"
default.flume[:logging][:slf4j_api][:url]                     = maven_repo("org.slf4j", "slf4j-api", node.flume[:logging][:slf4j_api][:version])

default.flume[:logging][:slf4j_log4j][:version]               = "1.6.1"
default.flume[:logging][:slf4j_log4j][:url]                   = maven_repo("org.slf4j", "slf4j-log4j12", node.flume[:logging][:slf4j_log4j][:version])

default.flume[:logging][:commons_lang][:version]              = "2.5"
default.flume[:logging][:commons_lang][:url]                  = maven_repo("commons-lang", "commons-lang", node.flume[:logging][:commons_lang][:version])

default.flume[:logging][:netty][:version]                     = "3.5.12.Final"
default.flume[:logging][:netty][:url]                         = maven_repo("io.netty", "netty", node.flume[:logging][:netty][:version])

default.flume[:logging][:flume_agents] = nil
default.flume[:logging][:properties] = nil
