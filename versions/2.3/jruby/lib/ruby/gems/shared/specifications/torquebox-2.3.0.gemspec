# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "torquebox"
  s.version = "2.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["The TorqueBox Team"]
  s.date = "2013-01-25"
  s.description = ""
  s.email = ["torquebox-dev@torquebox.org"]
  s.executables = ["torquebox"]
  s.files = ["bin/torquebox"]
  s.homepage = "http://torquebox.org/"
  s.licenses = ["lgpl"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "TorqueBox Gem"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<torquebox-core>, ["= 2.3.0"])
      s.add_runtime_dependency(%q<torquebox-transactions>, ["= 2.3.0"])
      s.add_runtime_dependency(%q<torquebox-configure>, ["= 2.3.0"])
      s.add_runtime_dependency(%q<torquebox-messaging>, ["= 2.3.0"])
      s.add_runtime_dependency(%q<torquebox-naming>, ["= 2.3.0"])
      s.add_runtime_dependency(%q<torquebox-rake-support>, ["= 2.3.0"])
      s.add_runtime_dependency(%q<torquebox-security>, ["= 2.3.0"])
      s.add_runtime_dependency(%q<torquebox-web>, ["= 2.3.0"])
      s.add_runtime_dependency(%q<torquebox-cache>, ["= 2.3.0"])
      s.add_runtime_dependency(%q<torquebox-stomp>, ["= 2.3.0"])
      s.add_runtime_dependency(%q<thor>, [">= 0.14.6"])
      s.add_development_dependency(%q<rspec>, ["= 2.7.0"])
    else
      s.add_dependency(%q<torquebox-core>, ["= 2.3.0"])
      s.add_dependency(%q<torquebox-transactions>, ["= 2.3.0"])
      s.add_dependency(%q<torquebox-configure>, ["= 2.3.0"])
      s.add_dependency(%q<torquebox-messaging>, ["= 2.3.0"])
      s.add_dependency(%q<torquebox-naming>, ["= 2.3.0"])
      s.add_dependency(%q<torquebox-rake-support>, ["= 2.3.0"])
      s.add_dependency(%q<torquebox-security>, ["= 2.3.0"])
      s.add_dependency(%q<torquebox-web>, ["= 2.3.0"])
      s.add_dependency(%q<torquebox-cache>, ["= 2.3.0"])
      s.add_dependency(%q<torquebox-stomp>, ["= 2.3.0"])
      s.add_dependency(%q<thor>, [">= 0.14.6"])
      s.add_dependency(%q<rspec>, ["= 2.7.0"])
    end
  else
    s.add_dependency(%q<torquebox-core>, ["= 2.3.0"])
    s.add_dependency(%q<torquebox-transactions>, ["= 2.3.0"])
    s.add_dependency(%q<torquebox-configure>, ["= 2.3.0"])
    s.add_dependency(%q<torquebox-messaging>, ["= 2.3.0"])
    s.add_dependency(%q<torquebox-naming>, ["= 2.3.0"])
    s.add_dependency(%q<torquebox-rake-support>, ["= 2.3.0"])
    s.add_dependency(%q<torquebox-security>, ["= 2.3.0"])
    s.add_dependency(%q<torquebox-web>, ["= 2.3.0"])
    s.add_dependency(%q<torquebox-cache>, ["= 2.3.0"])
    s.add_dependency(%q<torquebox-stomp>, ["= 2.3.0"])
    s.add_dependency(%q<thor>, [">= 0.14.6"])
    s.add_dependency(%q<rspec>, ["= 2.7.0"])
  end
end
