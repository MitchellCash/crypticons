require File.expand_path("../lib/crypticons/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "crypticons"
  s.version     = Crypticons::VERSION
  s.summary     = "The crypticons gem"
  s.platform    = Gem::Platform::RUBY
  s.description = "A package that distributes Crypticons in a gem"
  s.authors     = ["Mitchell Cash"]
  s.email       = ["mitchell@mitchellcash.com"]
  s.files       = Dir["{lib}/**/*"] + ["LICENSE", "README.md"]
  s.homepage    = "https://github.com/mitchellcash/crypticons"
  s.license     = "MIT"
  s.add_dependency "nokogiri", ">= 1.6.3.1"
end
