# -*- encoding: utf-8 -*-
# stub: lolcat 42.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "lolcat"
  s.version = "42.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Moe"]
  s.date = "2014-03-30"
  s.description = "Rainbows and unicorns!"
  s.email = ["moe@busyloop.net"]
  s.executables = ["lolcat"]
  s.files = ["bin/lolcat"]
  s.homepage = "https://github.com/busyloop/lolcat"
  s.rubygems_version = "2.4.5"
  s.summary = "Okay, no unicorns. But rainbows!!"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<paint>, ["~> 0.8.3"])
      s.add_runtime_dependency(%q<trollop>, ["~> 1.16.2"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<paint>, ["~> 0.8.3"])
      s.add_dependency(%q<trollop>, ["~> 1.16.2"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<paint>, ["~> 0.8.3"])
    s.add_dependency(%q<trollop>, ["~> 1.16.2"])
  end
end
