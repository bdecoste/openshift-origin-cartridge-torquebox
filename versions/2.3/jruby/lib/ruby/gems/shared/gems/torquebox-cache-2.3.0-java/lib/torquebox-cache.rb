module TorqueboxCache
  VERSION = '2.3.0'
  MAVEN_VERSION = '2.3.0'
end
begin
  require 'java'
  require File.dirname(__FILE__) + '/torquebox-cache.jar'
  require File.dirname(__FILE__) + '/polyglot-cache-1.12.0.jar'
  require File.dirname(__FILE__) + '/polyglot-core-1.12.0.jar'
rescue LoadError
  puts 'JAR-based gems require JRuby to load. Please visit www.jruby.org.'
  raise
end

load File.dirname(__FILE__) + '/gem_hook.rb' if File.exists?( File.dirname(__FILE__) + '/gem_hook.rb')
