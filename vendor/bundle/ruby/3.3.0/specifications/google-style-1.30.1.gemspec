# -*- encoding: utf-8 -*-
# stub: google-style 1.30.1 ruby lib

Gem::Specification.new do |s|
  s.name = "google-style".freeze
  s.version = "1.30.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel Azuma".freeze, "Graham Paye".freeze]
  s.date = "2024-10-28"
  s.description = "Shared style guide for Google's ruby projects".freeze
  s.email = ["dazuma@google.com".freeze, "paye@google.com".freeze]
  s.homepage = "https://github.com/googleapis/ruby-style/".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0.0".freeze)
  s.rubygems_version = "3.5.21".freeze
  s.summary = "Collection of rubocop rules".freeze

  s.installed_by_version = "3.6.7".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<rubocop>.freeze, ["~> 1.63".freeze])
end
