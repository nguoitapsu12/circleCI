# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "saddler-reporter-support-git"
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["sanemat"]
  s.bindir = "exe"
  s.date = "2016-05-14"
  s.description = "Utilities for Saddler reporter and git repository."
  s.email = ["o.gata.ken@gmail.com"]
  s.homepage = "https://github.com/packsaddle/ruby-saddler-reporter-support-git"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Utilities for Saddler reporter and git repository."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<git>, ["< 2.0", ">= 1.0"])
      s.add_runtime_dependency(%q<git_clone_url>, ["< 3.0", ">= 2.0"])
      s.add_runtime_dependency(%q<env_branch>, [">= 1.0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<git>, ["< 2.0", ">= 1.0"])
      s.add_dependency(%q<git_clone_url>, ["< 3.0", ">= 2.0"])
      s.add_dependency(%q<env_branch>, [">= 1.0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<git>, ["< 2.0", ">= 1.0"])
    s.add_dependency(%q<git_clone_url>, ["< 3.0", ">= 2.0"])
    s.add_dependency(%q<env_branch>, [">= 1.0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end
