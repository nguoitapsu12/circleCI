# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rubocop-checkstyle_formatter"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eito Katagiri"]
  s.date = "2015-04-25"
  s.description = "A formatter for rubocop that outputs in checkstyle format"
  s.email = ["eitoball@gmail.com"]
  s.homepage = "https://github.com/eitoball/rubocop-checkstyle_formatter"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "A formatter for rubocop that outputs in checkstyle format"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubocop>, [">= 0.20.1"])
      s.add_development_dependency(%q<appraisal>, ["~> 1.0.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, ["~> 10.1"])
      s.add_development_dependency(%q<rspec>, ["~> 2.14.0"])
    else
      s.add_dependency(%q<rubocop>, [">= 0.20.1"])
      s.add_dependency(%q<appraisal>, ["~> 1.0.0"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, ["~> 10.1"])
      s.add_dependency(%q<rspec>, ["~> 2.14.0"])
    end
  else
    s.add_dependency(%q<rubocop>, [">= 0.20.1"])
    s.add_dependency(%q<appraisal>, ["~> 1.0.0"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, ["~> 10.1"])
    s.add_dependency(%q<rspec>, ["~> 2.14.0"])
  end
end
