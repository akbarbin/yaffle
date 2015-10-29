$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "yaffle/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "yaffle"
  s.version     = Yaffle::VERSION
  s.authors     = ["Muhamad Akbar Bin Widayat"]
  s.email       = ["muhamadakbarbw@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "The Basics of Creating Rails Plugins."
  s.description = "It's about creating and pubslish a gem from basic."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
end
