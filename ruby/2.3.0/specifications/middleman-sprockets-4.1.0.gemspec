# -*- encoding: utf-8 -*-
# stub: middleman-sprockets 4.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "middleman-sprockets"
  s.version = "4.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Thomas Reynolds", "Ben Hollis", "Karl Freeman"]
  s.date = "2016-10-26"
  s.description = "Sprockets support for Middleman"
  s.email = ["me@tdreyno.com", "ben@benhollis.net", "karlfreeman@gmail.com"]
  s.homepage = "https://github.com/middleman/middleman-sprockets"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Sprockets support for Middleman"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>, ["~> 4.0"])
      s.add_runtime_dependency(%q<sprockets>, [">= 3.0"])
      s.add_development_dependency(%q<capybara>, ["~> 2.5.0"])
    else
      s.add_dependency(%q<middleman-core>, ["~> 4.0"])
      s.add_dependency(%q<sprockets>, [">= 3.0"])
      s.add_dependency(%q<capybara>, ["~> 2.5.0"])
    end
  else
    s.add_dependency(%q<middleman-core>, ["~> 4.0"])
    s.add_dependency(%q<sprockets>, [">= 3.0"])
    s.add_dependency(%q<capybara>, ["~> 2.5.0"])
  end
end
