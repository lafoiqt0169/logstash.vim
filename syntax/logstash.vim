" Vim syntax file
" Language: logstash.conf

if exists("b:current_syntax")
  finish
end

syn match logstashVariableBlock '\v\[[^,"].*\]' contained
syn match logstashVariableString '\v\[[^,"].*\]' contained

syn match logstashOperator "\v\=\>" contained
syn match logstashOperator "\v\=\=" contained
syn match logstashOperator "\v!\=" contained
syn match logstashOperator "\v\<" contained
syn match logstashOperator "\v\>" contained
syn match logstashOperator "\v\>\=" contained
syn match logstashOperator "\v\<\=" contained
syn match logstashBraces   "\v\{" contained
syn match logstashBraces   "\v\}" contained

syn keyword logstashOperator in contained
syn keyword logstashOperator not contained
syn keyword logstashOperator and contained

syn keyword logstashConditional if contained

syn keyword logstashBoolean true contained
syn keyword logstashBoolean false contained

syn match logstashNumber '\v\d\+' contained

syn region logstashBlock start=+{+ end=+}+ contains=logstashBlock,logstashComment,logstashPlugin,logstashVariableBlock,logstashString,logstashOperator,logstashBoolean,logstashNumber,logstashConditional,logstashBraces
syn region logstashString start=+"+ end=+"+ skip=+\\\\\|\\"+ contains=logstashFormat
syn region logstashString start=+'+ end=+'+ skip=+\\\\\|\\'+ contains=logstashFormat
syn region logstashVariableBlock start=/\v\[/ skip=/\v\\./ end=/\v\]/ contains=logstashString
syn region logstashVariableString start=/\v\[/ skip=/\v\\./ end=/\v\]/ contains=logstashString
syn region logstashFormat start=+%{+ end=+}+ contains=logstashVariableString oneline

syn match logstashComment ' *#.*$'

syn keyword logstashSection input
syn keyword logstashSection filter
syn keyword logstashSection output

" Inputs
syn keyword logstashPlugin azure_event_hubs contained
syn keyword logstashPlugin beats contained
syn keyword logstashPlugin cloudwatch contained
syn keyword logstashPlugin couchdb_changes contained
syn keyword logstashPlugin dead_letter_queue contained
syn keyword logstashPlugin elastic_agent contained
syn keyword logstashPlugin elasticsearch contained
syn keyword logstashPlugin exec contained
syn keyword logstashPlugin file contained
syn keyword logstashPlugin ganglia contained
syn keyword logstashPlugin gelf contained
syn keyword logstashPlugin generator contained
syn keyword logstashPlugin github contained
syn keyword logstashPlugin google_cloud_storage contained
syn keyword logstashPlugin google_pubsub contained
syn keyword logstashPlugin graphite contained
syn keyword logstashPlugin heartbeat contained
syn keyword logstashPlugin http contained
syn keyword logstashPlugin http_poller contained
syn keyword logstashPlugin imap contained
syn keyword logstashPlugin irc contained
syn keyword logstashPlugin java_generator contained
syn keyword logstashPlugin java_stdin contained
syn keyword logstashPlugin jdbc contained
syn keyword logstashPlugin jms contained
syn keyword logstashPlugin jmx contained
syn keyword logstashPlugin kafka contained
syn keyword logstashPlugin kinesis contained
syn keyword logstashPlugin log4j contained
syn keyword logstashPlugin lumberjack contained
syn keyword logstashPlugin meetup contained
syn keyword logstashPlugin pipe contained
syn keyword logstashPlugin puppet_facter contained
syn keyword logstashPlugin rabbitmq contained
syn keyword logstashPlugin redis contained
syn keyword logstashPlugin relp contained
syn keyword logstashPlugin rss contained
syn keyword logstashPlugin s3 contained
syn keyword logstashPlugin s3-sns-sqs contained
syn keyword logstashPlugin salesforce contained
syn keyword logstashPlugin snmp contained
syn keyword logstashPlugin snmptrap contained
syn keyword logstashPlugin sqlite contained
syn keyword logstashPlugin sqs contained
syn keyword logstashPlugin stdin contained
syn keyword logstashPlugin stomp contained
syn keyword logstashPlugin syslog contained
syn keyword logstashPlugin tcp contained
syn keyword logstashPlugin twitter contained
syn keyword logstashPlugin udp contained
syn keyword logstashPlugin unix contained
syn keyword logstashPlugin varnishlog contained
syn keyword logstashPlugin websocket contained
syn keyword logstashPlugin wmi contained
syn keyword logstashPlugin xmpp contained

" Filters
syn keyword logstashPlugin aggregate contained
syn keyword logstashPlugin alter contained
syn keyword logstashPlugin bytes contained
syn keyword logstashPlugin cidr contained
syn keyword logstashPlugin cipher contained
syn keyword logstashPlugin clone contained
syn keyword logstashPlugin csv contained
syn keyword logstashPlugin date contained
syn keyword logstashPlugin de_dot contained
syn keyword logstashPlugin dissect contained
syn keyword logstashPlugin dns contained
syn keyword logstashPlugin drop contained
syn keyword logstashPlugin elapsed contained
syn keyword logstashPlugin elasticsearch contained
syn keyword logstashPlugin environment contained
syn keyword logstashPlugin extractnumbers contained
syn keyword logstashPlugin fingerprint contained
syn keyword logstashPlugin geoip contained
syn keyword logstashPlugin grok contained
syn keyword logstashPlugin http contained
syn keyword logstashPlugin i18n contained
syn keyword logstashPlugin java_uuid contained
syn keyword logstashPlugin jdbc_static contained
syn keyword logstashPlugin jdbc_streaming contained
syn keyword logstashPlugin json contained
syn keyword logstashPlugin json_encode contained
syn keyword logstashPlugin kv contained
syn keyword logstashPlugin memcached contained
syn keyword logstashPlugin metricize contained
syn keyword logstashPlugin metrics contained
syn keyword logstashPlugin mutate contained
syn keyword logstashPlugin prune contained
syn keyword logstashPlugin range contained
syn keyword logstashPlugin ruby contained
syn keyword logstashPlugin sleep contained
syn keyword logstashPlugin split contained
syn keyword logstashPlugin syslog_pri contained
syn keyword logstashPlugin threats_classifier contained
syn keyword logstashPlugin throttle contained
syn keyword logstashPlugin tld contained
syn keyword logstashPlugin translate contained
syn keyword logstashPlugin truncate contained
syn keyword logstashPlugin urldecode contained
syn keyword logstashPlugin useragent contained
syn keyword logstashPlugin uuid contained
syn keyword logstashPlugin wurfl_device_detection contained
syn keyword logstashPlugin xml contained

" Outputs
syn keyword logstashPlugin app_search contained
syn keyword logstashPlugin boundary contained
syn keyword logstashPlugin circonus contained
syn keyword logstashPlugin cloudwatch contained
syn keyword logstashPlugin csv contained
syn keyword logstashPlugin datadog contained
syn keyword logstashPlugin datadog_metrics contained
syn keyword logstashPlugin dynatrace contained
syn keyword logstashPlugin elastic_app_search contained
syn keyword logstashPlugin elasticsearch contained
syn keyword logstashPlugin elastic_workplace_search contained
syn keyword logstashPlugin email contained
syn keyword logstashPlugin exec contained
syn keyword logstashPlugin file contained
syn keyword logstashPlugin ganglia contained
syn keyword logstashPlugin gelf contained
syn keyword logstashPlugin google_bigquery contained
syn keyword logstashPlugin google_cloud_storage contained
syn keyword logstashPlugin google_pubsub contained
syn keyword logstashPlugin graphite contained
syn keyword logstashPlugin graphtastic contained
syn keyword logstashPlugin http contained
syn keyword logstashPlugin influxdb contained
syn keyword logstashPlugin irc contained
syn keyword logstashPlugin java_stdout contained
syn keyword logstashPlugin juggernaut contained
syn keyword logstashPlugin kafka contained
syn keyword logstashPlugin librato contained
syn keyword logstashPlugin loggly contained
syn keyword logstashPlugin lumberjack contained
syn keyword logstashPlugin metriccatcher contained
syn keyword logstashPlugin mongodb contained
syn keyword logstashPlugin nagios contained
syn keyword logstashPlugin nagios_nsca contained
syn keyword logstashPlugin opentsdb contained
syn keyword logstashPlugin pagerduty contained
syn keyword logstashPlugin pipe contained
syn keyword logstashPlugin rabbitmq contained
syn keyword logstashPlugin redis contained
syn keyword logstashPlugin redmine contained
syn keyword logstashPlugin riak contained
syn keyword logstashPlugin riemann contained
syn keyword logstashPlugin s3 contained
syn keyword logstashPlugin sink contained
syn keyword logstashPlugin sns contained
syn keyword logstashPlugin solr_http contained
syn keyword logstashPlugin sqs contained
syn keyword logstashPlugin statsd contained
syn keyword logstashPlugin stdout contained
syn keyword logstashPlugin stomp contained
syn keyword logstashPlugin syslog contained
syn keyword logstashPlugin tcp contained
syn keyword logstashPlugin timber contained
syn keyword logstashPlugin udp contained
syn keyword logstashPlugin webhdfs contained
syn keyword logstashPlugin websocket contained
syn keyword logstashPlugin workplace_search contained
syn keyword logstashPlugin xmpp contained
syn keyword logstashPlugin zabbix contained

" Codec
syn keyword logstashPlugin avro contained
syn keyword logstashPlugin cef contained
syn keyword logstashPlugin cloudfront contained
syn keyword logstashPlugin cloudtrail contained
syn keyword logstashPlugin collectd contained
syn keyword logstashPlugin csv contained
syn keyword logstashPlugin dots contained
syn keyword logstashPlugin edn contained
syn keyword logstashPlugin edn_lines contained
syn keyword logstashPlugin es_bulk contained
syn keyword logstashPlugin fluent contained
syn keyword logstashPlugin graphite contained
syn keyword logstashPlugin gzip_lines contained
syn keyword logstashPlugin java_line contained
syn keyword logstashPlugin java_plain contained
syn keyword logstashPlugin jdots contained
syn keyword logstashPlugin json contained
syn keyword logstashPlugin json_lines contained
syn keyword logstashPlugin line contained
syn keyword logstashPlugin msgpack contained
syn keyword logstashPlugin multiline contained
syn keyword logstashPlugin netflow contained
syn keyword logstashPlugin nmap contained
syn keyword logstashPlugin plain contained
syn keyword logstashPlugin protobuf contained
syn keyword logstashPlugin rubydebug contained

" highlight
hi link logstashBlock Normal
hi link logstashPlugin Function
hi link logstashBraces Function
hi link logstashSection Statement

hi link logstashComment Comment
hi link logstashVariableBlock Identifier
hi link logstashVariableString Identifier
hi link logstashString String
hi link logstashOperator Operator
hi link logstashBoolean Boolean
hi link logstashNumber Number
hi link logstashConditional Conditional
hi link logstashFormat Delimiter

let b:current_syntax = "logstash"
