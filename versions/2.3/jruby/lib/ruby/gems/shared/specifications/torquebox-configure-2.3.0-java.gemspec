# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "torquebox-configure"
  s.version = "2.3.0"
  s.platform = "java"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["The TorqueBox Team"]
  s.date = "2013-01-25"
  s.description = ""
  s.email = ["torquebox-dev@torquebox.org"]
  s.homepage = "http://torquebox.org/"
  s.licenses = ["lgpl"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "TorqueBox Configure Gem"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<blankslate>, ["= 2.1.2.4"])
      s.add_development_dependency(%q<rspec>, ["= 2.7.0"])
    else
      s.add_dependency(%q<blankslate>, ["= 2.1.2.4"])
      s.add_dependency(%q<rspec>, ["= 2.7.0"])
    end
  else
    s.add_dependency(%q<blankslate>, ["= 2.1.2.4"])
    s.add_dependency(%q<rspec>, ["= 2.7.0"])
  end
end
