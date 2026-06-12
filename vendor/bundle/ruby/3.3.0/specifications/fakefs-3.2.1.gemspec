# -*- encoding: utf-8 -*-
# stub: fakefs 3.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "fakefs".freeze
  s.version = "3.2.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chris Wanstrath".freeze, "Scott Taylor".freeze, "Jeff Hodges".freeze, "Pat Nakajima".freeze, "Brian Donovan".freeze]
  s.date = "1980-01-02"
  s.description = "A fake filesystem. Use it in your tests.".freeze
  s.email = ["chris@ozmm.org".freeze]
  s.homepage = "https://github.com/fakefs/fakefs".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.2.0".freeze)
  s.rubygems_version = "4.0.3".freeze
  s.summary = "A fake filesystem. Use it in your tests.".freeze

  s.installed_by_version = "3.6.7".freeze

  s.specification_version = 4

  s.add_development_dependency(%q<bump>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<csv>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<irb>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<maxitest>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<mutex_m>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<pry>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 1.70.0".freeze])
end
