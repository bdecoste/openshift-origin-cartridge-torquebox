module TorqueboxMessaging
  VERSION = '2.3.0'
  MAVEN_VERSION = '2.3.0'
end
begin
  require 'java'
  require File.dirname(__FILE__) + '/torquebox-messaging.jar'
  require File.dirname(__FILE__) + '/jboss-jms-api_1.1_spec-1.0.1.Final.jar'
  require File.dirname(__FILE__) + '/jboss-transaction-api_1.1_spec-1.0.1.Final.jar'
  require File.dirname(__FILE__) + '/hornetq-core-2.2.21.Final.jar'
  require File.dirname(__FILE__) + '/hornetq-jms-2.2.21.Final.jar'
  require File.dirname(__FILE__) + '/netty-3.2.6.Final.jar'
rescue LoadError
  puts 'JAR-based gems require JRuby to load. Please visit www.jruby.org.'
  raise
end

load File.dirname(__FILE__) + '/gem_hook.rb' if File.exists?( File.dirname(__FILE__) + '/gem_hook.rb')
