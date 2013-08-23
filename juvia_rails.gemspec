$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "juvia_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "juvia_rails"
  s.version     = JuviaRails::VERSION
  s.authors     = ["James Smith"]
  s.email       = ["james.smith@theodi.org"]
  s.summary     = "Helpers to make integrating Juvia comments simple"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE.md", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec", "~> 2.14"
  s.add_development_dependency "actionpack", '>= 3.2.0'
  s.add_development_dependency "activesupport", '>= 3.2.0'
  s.add_development_dependency "activemodel", '>= 3.2.0'
  s.add_development_dependency "railties", '>= 3.2.0'
  s.add_development_dependency "simplecov-rcov", '~> 0.2'

end
