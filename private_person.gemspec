# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: private_person 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "private_person"
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Karen Lundgren"]
  s.date = "2015-05-31"
  s.description = "Private person is an active record extension gem that allows a model to be given privacy settings over arbitrary models and polymorphic relations, putting users' accounts in control of their own privacy policies."
  s.email = "karen.e.lundgren@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".idea/scopes/scope_settings.xml",
    ".rspec",
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/generators/private_person/install/install_generator.rb",
    "lib/generators/private_person/install/templates/migrate/create_permissions_table.rb",
    "lib/generators/private_person/utils.rb",
    "lib/private_person.rb",
    "lib/private_person/extensions/acts_as_permissible.rb",
    "lib/private_person/extensions/acts_as_permissor.rb",
    "lib/private_person/extensions/acts_as_permitted.rb",
    "lib/private_person/models/permission.rb",
    "lib/private_person/version.rb",
    "private_person.gemspec",
    "script/rails",
    "spec/dummy/.rspec",
    "spec/dummy/Rakefile",
    "spec/dummy/app/models/page.rb",
    "spec/dummy/app/models/user.rb",
    "spec/dummy/config.ru",
    "spec/dummy/config/application.rb",
    "spec/dummy/config/boot.rb",
    "spec/dummy/config/database.yml",
    "spec/dummy/config/environment.rb",
    "spec/dummy/config/environments/development.rb",
    "spec/dummy/config/environments/test.rb",
    "spec/dummy/config/initializers/backtrace_silencers.rb",
    "spec/dummy/config/initializers/inflections.rb",
    "spec/dummy/config/initializers/mime_types.rb",
    "spec/dummy/config/initializers/secret_token.rb",
    "spec/dummy/config/initializers/session_store.rb",
    "spec/dummy/config/locales/devise.en.yml",
    "spec/dummy/config/locales/en.yml",
    "spec/dummy/config/routes.rb",
    "spec/dummy/db/development.sqlite3",
    "spec/dummy/db/migrate/20130906213557_create_users_table.rb",
    "spec/dummy/db/migrate/20130906213612_create_pages_table.rb",
    "spec/dummy/db/schema.rb",
    "spec/dummy/db/test.sqlite3",
    "spec/dummy/script/rails",
    "spec/factories/pages.rb",
    "spec/factories/permissions.rb",
    "spec/factories/users.rb",
    "spec/models/page_spec.rb",
    "spec/models/permission_spec.rb",
    "spec/models/user_spec.rb",
    "spec/private_person_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/permissions_support.rb",
    "spec/support/permissor_support.rb",
    "spec/support/users_support.rb"
  ]
  s.homepage = "http://www.gemvein.com/museum/cases/private_person"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "Private person puts your users in control of their own privacy policies."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 4.0"])
      s.add_runtime_dependency(%q<activerecord>, [">= 4.0"])
      s.add_runtime_dependency(%q<jeweler>, ["~> 2"])
    else
      s.add_dependency(%q<rails>, [">= 4.0"])
      s.add_dependency(%q<activerecord>, [">= 4.0"])
      s.add_dependency(%q<jeweler>, ["~> 2"])
    end
  else
    s.add_dependency(%q<rails>, [">= 4.0"])
    s.add_dependency(%q<activerecord>, [">= 4.0"])
    s.add_dependency(%q<jeweler>, ["~> 2"])
  end
end

